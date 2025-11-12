# Generating dart_eval Bindings

This document explains how to regenerate dart_eval bindings when pvpsdk models change.

## Automated Script

Simply run:

```powershell
.\generate_bindings.ps1
```

This script will:
1. Add dart_eval as dev dependency to pvpsdk
2. Generate bindings using `dart_eval bind --all`
3. Copy `eval_plugin.dart` and all `*.eval.dart` files to `pvpsdk_binding/lib/` (flat structure)
4. Fix imports to reference pvpsdk package correctly
5. Clean up pvpsdk (remove generated files and dart_eval dependency)

## Manual Steps (if needed)

If you need to do it manually:

```powershell
# 1. Generate bindings in pvpsdk
cd pvpsdk
dart pub add dart_eval --dev
dart_eval bind --all

# 2. Copy files to pvpsdk_binding (flat)
cd ..
Copy-Item pvpsdk/lib/eval_plugin.dart pvpsdk_binding/lib/
Get-ChildItem pvpsdk/lib -Recurse -Filter "*.eval.dart" | ForEach-Object {
    Copy-Item $_.FullName "pvpsdk_binding/lib/$($_.Name)"
}

# 3. Fix imports in pvpsdk_binding
# - Change: import 'src/...' to flat imports
# - Change: import 'lesson.dart' to 'package:pvpsdk/src/models/lesson.dart'
# - Change: import 'context.dart' to 'package:pvpsdk/src/context.dart'

# 4. Clean up pvpsdk
cd pvpsdk
Remove-Item lib/eval_plugin.dart
Get-ChildItem lib -Recurse -Filter "*.eval.dart" | Remove-Item
dart pub remove dart_eval
```

## File Structure

**pvpsdk/** - Pure Dart SDK (no dart_eval dependency)
```
lib/
  pvpsdk.dart
  src/
    models/
      lesson.dart
    context.dart
```

**pvpsdk_binding/** - dart_eval bindings (flat structure)
```
lib/
  pvpsdk.dart               # Exports eval_plugin.dart
  eval_plugin.dart          # Main plugin with PvpsdkPlugin class
  lesson.eval.dart          # Lesson bindings (flat)
  context.eval.dart         # Context bindings (flat)
  eval_plugin.eval.dart     # Plugin bindings (flat)
```
