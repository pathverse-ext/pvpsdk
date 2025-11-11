// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'eval_plugin.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'eval_plugin.eval.dart';
import 'src/context.eval.dart';
import 'src/models/lesson.eval.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [PvpsdkPlugin]
class $PvpsdkPlugin implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:pvpsdk/eval_plugin.dart',
      'PvpsdkPlugin.',
      $PvpsdkPlugin.$new,
    );
  }

  /// Compile-time type specification of [$PvpsdkPlugin]
  static const $spec = BridgeTypeSpec(
    'package:pvpsdk/eval_plugin.dart',
    'PvpsdkPlugin',
  );

  /// Compile-time type declaration of [$PvpsdkPlugin]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$PvpsdkPlugin]
  static const $declaration = BridgeClassDef(
    BridgeClassType(
      $type,

      $implements: [
        BridgeTypeRef(
          BridgeTypeSpec(
            'package:dart_eval/src/eval/plugin.dart',
            'EvalPlugin',
          ),
          [],
        ),
      ],
    ),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {
      'configureForCompile': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'registry',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:dart_eval/src/eval/bridge/registry.dart',
                    'BridgeDeclarationRegistry',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),

      'configureForRuntime': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.voidType)),
          namedParams: [],
          params: [
            BridgeParameter(
              'runtime',
              BridgeTypeAnnotation(
                BridgeTypeRef(
                  BridgeTypeSpec(
                    'package:dart_eval/src/eval/runtime/runtime.dart',
                    'Runtime',
                  ),
                  [],
                ),
              ),
              false,
            ),
          ],
        ),
      ),
    },
    getters: {
      'identifier': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          namedParams: [],
          params: [],
        ),
      ),
    },
    setters: {},
    fields: {},
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [PvpsdkPlugin.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $PvpsdkPlugin.wrap(PvpsdkPlugin());
  }

  final $Instance _superclass;

  @override
  final PvpsdkPlugin $value;

  @override
  PvpsdkPlugin get $reified => $value;

  /// Wrap a [PvpsdkPlugin] in a [$PvpsdkPlugin]
  $PvpsdkPlugin.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'identifier':
        final _identifier = $value.identifier;
        return $String(_identifier);
      case 'configureForCompile':
        return __configureForCompile;

      case 'configureForRuntime':
        return __configureForRuntime;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __configureForCompile = $Function(
    _configureForCompile,
  );
  static $Value? _configureForCompile(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $PvpsdkPlugin;
    self.$value.configureForCompile(args[0]!.$value);
    return null;
  }

  static const $Function __configureForRuntime = $Function(
    _configureForRuntime,
  );
  static $Value? _configureForRuntime(
    Runtime runtime,
    $Value? target,
    List<$Value?> args,
  ) {
    final self = target! as $PvpsdkPlugin;
    self.$value.configureForRuntime(args[0]!.$value);
    return null;
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
