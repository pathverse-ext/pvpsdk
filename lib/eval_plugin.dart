import 'package:dart_eval/dart_eval_bridge.dart';
import 'eval_plugin.eval.dart';
import 'src/context.eval.dart';
import 'src/models/lesson.eval.dart';

/// [EvalPlugin] for pvpsdk
class PvpsdkPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:pvpsdk';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($PvpsdkPlugin.$declaration);
    registry.defineBridgeClass($PVPContext.$declaration);
    registry.defineBridgeClass($Lesson.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $PvpsdkPlugin.configureForRuntime(runtime);
    $PVPContext.configureForRuntime(runtime);
    $Lesson.configureForRuntime(runtime);
  }
}
