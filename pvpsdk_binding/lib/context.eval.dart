// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:pvpsdk/src/context.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [PVPContext]
class $PVPContext implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:pvpsdk/src/context.dart',
      'PVPContext.',
      $PVPContext.$new,
    );
  }

  /// Compile-time type specification of [$PVPContext]
  static const $spec = BridgeTypeSpec(
    'package:pvpsdk/src/context.dart',
    'PVPContext',
  );

  /// Compile-time type declaration of [$PVPContext]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$PVPContext]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'apiClient',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),

            BridgeParameter(
              'healthClient',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),
    },

    methods: {},
    getters: {},
    setters: {},
    fields: {
      'apiClient': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
        isStatic: false,
      ),

      'healthClient': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [PVPContext.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $PVPContext.wrap(
      PVPContext(apiClient: args[0]?.$value, healthClient: args[1]?.$value),
    );
  }

  final $Instance _superclass;

  @override
  final PVPContext $value;

  @override
  PVPContext get $reified => $value;

  /// Wrap a [PVPContext] in a [$PVPContext]
  $PVPContext.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'apiClient':
        final _apiClient = $value.apiClient;
        return $Object(_apiClient);

      case 'healthClient':
        final _healthClient = $value.healthClient;
        return $Object(_healthClient);
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
