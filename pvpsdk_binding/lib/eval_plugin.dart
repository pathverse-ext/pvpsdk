import 'package:dart_eval/dart_eval_bridge.dart';
import 'context.eval.dart';
import 'lesson.eval.dart';

/// [EvalPlugin] for pvpsdk
class PvpsdkPlugin implements EvalPlugin {
  @override
  String get identifier => 'package:pvpsdk';

  @override
  void configureForCompile(BridgeDeclarationRegistry registry) {
    registry.defineBridgeClass($PVPContext.$declaration);
    registry.defineBridgeClass($Lesson.$declaration);
  }

  @override
  void configureForRuntime(Runtime runtime) {
    $PVPContext.configureForRuntime(runtime);
    $Lesson.configureForRuntime(runtime);
  }
}
