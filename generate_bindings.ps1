# Script to generate and copy dart_eval bindings from pvpsdk to pvpsdk_binding

Write-Host "Generating dart_eval bindings..." -ForegroundColor Cyan

# Step 1: Add dart_eval as dev dependency
Write-Host "1. Adding dart_eval as dev dependency to pvpsdk..." -ForegroundColor Yellow
Set-Location "$PSScriptRoot\pvpsdk"
dart pub add dart_eval --dev

# Step 2: Generate bindings
Write-Host "2. Generating bindings with dart_eval..." -ForegroundColor Yellow
dart_eval bind --all

# Step 3: Copy generated files to pvpsdk_binding (flat structure)
Write-Host "3. Copying generated files to pvpsdk_binding..." -ForegroundColor Yellow
$bindingPath = "$PSScriptRoot\pvpsdk_binding\lib"

# Copy eval_plugin.dart
Copy-Item "lib\eval_plugin.dart" "$bindingPath\eval_plugin.dart" -Force
Write-Host "  Copied: eval_plugin.dart" -ForegroundColor Green

# Copy all .eval.dart files flat (no subdirectories)
Get-ChildItem "lib" -Recurse -Filter "*.eval.dart" | ForEach-Object {
    $fileName = $_.Name
    Copy-Item $_.FullName "$bindingPath\$fileName" -Force
    Write-Host "  Copied: $fileName" -ForegroundColor Green
}

# Step 4: Fix imports in copied files
Write-Host "4. Fixing imports in pvpsdk_binding..." -ForegroundColor Yellow

# Fix eval_plugin.dart imports
$evalPluginPath = "$bindingPath\eval_plugin.dart"
$content = Get-Content $evalPluginPath -Raw
$content = $content -replace "import 'src/context\.eval\.dart';", "import 'context.eval.dart';"
$content = $content -replace "import 'src/models/lesson\.eval\.dart';", "import 'lesson.eval.dart';"
Set-Content $evalPluginPath $content -NoNewline
Write-Host "  Fixed imports: eval_plugin.dart" -ForegroundColor Green

# Fix .eval.dart files
Get-ChildItem "$bindingPath" -Filter "*.eval.dart" | ForEach-Object {
    $content = Get-Content $_.FullName -Raw
    
    # Fix imports to use pvpsdk package
    $content = $content -replace "import 'lesson\.dart';", "import 'package:pvpsdk/src/models/lesson.dart';"
    $content = $content -replace "import 'context\.dart';", "import 'package:pvpsdk/src/context.dart';"
    
    # Fix internal imports between .eval.dart files to be flat
    $content = $content -replace "import 'src/context\.eval\.dart';", "import 'context.eval.dart';"
    $content = $content -replace "import 'src/models/lesson\.eval\.dart';", "import 'lesson.eval.dart';"
    
    Set-Content $_.FullName $content -NoNewline
    Write-Host "  Fixed imports: $($_.Name)" -ForegroundColor Green
}

# Step 5: Clean up pvpsdk
Write-Host "5. Cleaning up pvpsdk..." -ForegroundColor Yellow
Remove-Item "lib\eval_plugin.dart" -Force -ErrorAction SilentlyContinue
Get-ChildItem "lib" -Recurse -Filter "*.eval.dart" | Remove-Item -Force
dart pub remove dart_eval

Write-Host "`nBindings generated successfully!" -ForegroundColor Green
Write-Host "Files are ready in pvpsdk_binding package." -ForegroundColor Green
