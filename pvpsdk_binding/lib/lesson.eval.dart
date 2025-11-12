// ignore_for_file: unused_import, unnecessary_import
// ignore_for_file: always_specify_types, avoid_redundant_argument_values
// ignore_for_file: sort_constructors_first
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:dart_eval/dart_eval.dart';
import 'package:dart_eval/dart_eval_bridge.dart';
import 'package:pvpsdk/src/models/lesson.dart';
import 'package:dart_eval/stdlib/core.dart';

/// dart_eval wrapper binding for [Lesson]
class $Lesson implements $Instance {
  /// Configure this class for use in a [Runtime]
  static void configureForRuntime(Runtime runtime) {
    runtime.registerBridgeFunc(
      'package:pvpsdk/src/models/lesson.dart',
      'Lesson.',
      $Lesson.$new,
    );

    runtime.registerBridgeFunc(
      'package:pvpsdk/src/models/lesson.dart',
      'Lesson.fromJson',
      $Lesson.$fromJson,
    );
  }

  /// Compile-time type specification of [$Lesson]
  static const $spec = BridgeTypeSpec(
    'package:pvpsdk/src/models/lesson.dart',
    'Lesson',
  );

  /// Compile-time type declaration of [$Lesson]
  static const $type = BridgeTypeRef($spec);

  /// Compile-time class declaration of [$Lesson]
  static const $declaration = BridgeClassDef(
    BridgeClassType($type),
    constructors: {
      '': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [
            BridgeParameter(
              'id',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),

            BridgeParameter(
              'name',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              false,
            ),

            BridgeParameter(
              'description',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'image',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'interval',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.int, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'position',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),

            BridgeParameter(
              'checkIn',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'program',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),

            BridgeParameter(
              'programId',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
              false,
            ),

            BridgeParameter(
              'tags',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.list, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                ]),
              ),
              false,
            ),

            BridgeParameter(
              'alwaysShow',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              false,
            ),

            BridgeParameter(
              'releaseType',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'hideTitleCard',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              false,
            ),

            BridgeParameter(
              'conditions',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'hasCardGrouping',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              false,
            ),

            BridgeParameter(
              'group',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.string, []),
                nullable: true,
              ),
              true,
            ),

            BridgeParameter(
              'hasCompleted',
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
              false,
            ),

            BridgeParameter(
              'extra',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
              true,
            ),
          ],
          params: [],
        ),
        isFactory: false,
      ),

      'fromJson': BridgeConstructorDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation($type),
          namedParams: [],
          params: [
            BridgeParameter(
              'json',
              BridgeTypeAnnotation(
                BridgeTypeRef(CoreTypes.map, [
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
                  BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
                ]),
              ),
              false,
            ),
          ],
        ),
        isFactory: true,
      ),
    },

    methods: {
      'toJson': BridgeMethodDef(
        BridgeFunctionDef(
          returns: BridgeTypeAnnotation(
            BridgeTypeRef(CoreTypes.map, [
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
              BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
            ]),
          ),
          namedParams: [],
          params: [],
        ),
      ),
    },
    getters: {},
    setters: {},
    fields: {
      'id': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'name': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
        isStatic: false,
      ),

      'description': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'image': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'interval': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, []), nullable: true),
        isStatic: false,
      ),

      'position': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'checkIn': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'program': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'programId': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.int, [])),
        isStatic: false,
      ),

      'tags': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.list, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
          ]),
        ),
        isStatic: false,
      ),

      'alwaysShow': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'releaseType': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'hideTitleCard': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'conditions': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'hasCardGrouping': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'group': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.string, []),
          nullable: true,
        ),
        isStatic: false,
      ),

      'hasCompleted': BridgeFieldDef(
        BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.bool, [])),
        isStatic: false,
      ),

      'extra': BridgeFieldDef(
        BridgeTypeAnnotation(
          BridgeTypeRef(CoreTypes.map, [
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.string, [])),
            BridgeTypeAnnotation(BridgeTypeRef(CoreTypes.dynamic)),
          ]),
        ),
        isStatic: false,
      ),
    },
    wrap: true,
    bridge: false,
  );

  /// Wrapper for the [Lesson.new] constructor
  static $Value? $new(Runtime runtime, $Value? thisValue, List<$Value?> args) {
    return $Lesson.wrap(
      Lesson(
        id: args[0]!.$value,
        name: args[1]!.$value,
        description: args[2]?.$value,
        image: args[3]?.$value,
        interval: args[4]?.$value,
        position: args[5]!.$value,
        checkIn: args[6]?.$value,
        program: args[7]!.$value,
        programId: args[8]!.$value,
        tags: (args[9]!.$reified as List).cast(),
        alwaysShow: args[10]!.$value,
        releaseType: args[11]?.$value,
        hideTitleCard: args[12]!.$value,
        conditions: args[13]?.$value,
        hasCardGrouping: args[14]!.$value,
        group: args[15]?.$value,
        hasCompleted: args[16]!.$value,
        extra: (args[17]?.$reified ?? const {} as Map?)?.cast(),
      ),
    );
  }

  /// Wrapper for the [Lesson.fromJson] constructor
  static $Value? $fromJson(
    Runtime runtime,
    $Value? thisValue,
    List<$Value?> args,
  ) {
    return $Lesson.wrap(Lesson.fromJson((args[0]!.$reified as Map).cast()));
  }

  final $Instance _superclass;

  @override
  final Lesson $value;

  @override
  Lesson get $reified => $value;

  /// Wrap a [Lesson] in a [$Lesson]
  $Lesson.wrap(this.$value) : _superclass = $Object($value);

  @override
  int $getRuntimeType(Runtime runtime) => runtime.lookupType($spec);

  @override
  $Value? $getProperty(Runtime runtime, String identifier) {
    switch (identifier) {
      case 'id':
        final _id = $value.id;
        return $int(_id);

      case 'name':
        final _name = $value.name;
        return $String(_name);

      case 'description':
        final _description = $value.description;
        return _description == null ? const $null() : $String(_description);

      case 'image':
        final _image = $value.image;
        return _image == null ? const $null() : $String(_image);

      case 'interval':
        final _interval = $value.interval;
        return _interval == null ? const $null() : $int(_interval);

      case 'position':
        final _position = $value.position;
        return $int(_position);

      case 'checkIn':
        final _checkIn = $value.checkIn;
        return _checkIn == null ? const $null() : $String(_checkIn);

      case 'program':
        final _program = $value.program;
        return $int(_program);

      case 'programId':
        final _programId = $value.programId;
        return $int(_programId);

      case 'tags':
        final _tags = $value.tags;
        return $List.view(_tags, (e) => $String(e));

      case 'alwaysShow':
        final _alwaysShow = $value.alwaysShow;
        return $bool(_alwaysShow);

      case 'releaseType':
        final _releaseType = $value.releaseType;
        return _releaseType == null ? const $null() : $String(_releaseType);

      case 'hideTitleCard':
        final _hideTitleCard = $value.hideTitleCard;
        return $bool(_hideTitleCard);

      case 'conditions':
        final _conditions = $value.conditions;
        return _conditions == null ? const $null() : $String(_conditions);

      case 'hasCardGrouping':
        final _hasCardGrouping = $value.hasCardGrouping;
        return $bool(_hasCardGrouping);

      case 'group':
        final _group = $value.group;
        return _group == null ? const $null() : $String(_group);

      case 'hasCompleted':
        final _hasCompleted = $value.hasCompleted;
        return $bool(_hasCompleted);

      case 'extra':
        final _extra = $value.extra;
        return $Map.wrap(_extra);
      case 'toJson':
        return __toJson;
    }
    return _superclass.$getProperty(runtime, identifier);
  }

  static const $Function __toJson = $Function(_toJson);
  static $Value? _toJson(Runtime runtime, $Value? target, List<$Value?> args) {
    final self = target! as $Lesson;
    final result = self.$value.toJson();
    return $Map.wrap(result);
  }

  @override
  void $setProperty(Runtime runtime, String identifier, $Value value) {
    return _superclass.$setProperty(runtime, identifier, value);
  }
}
