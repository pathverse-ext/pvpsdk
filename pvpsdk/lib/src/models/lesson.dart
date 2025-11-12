class Lesson {
  final int id;
  final String name;
  final String? description;
  final String? image;
  // final String? releaseDate;
  // final String? releaseHour;
  final int? interval;
  final int position;
  // final int? notificationInterval;
  // final String? notificationMessage;
  // final String? notificationMessageTitle;
  final String? checkIn;
  final int program;
  final int programId;
  final List<String> tags;
  // final bool isJitai;
  // final String? jitaiCondition;
  final bool alwaysShow;
  // final bool randRelease;
  // final bool perUserRandomize;
  // final int? randTimeStartHr;
  // final int? randTimeEndHr;
  // final int? randTimeStartMin;
  // final int? randTimeEndMin;
  // final int? randTimeHr;
  // final int? randTimeMin;
  // final bool close;
  // final bool closeOnTime;
  // final bool closeOnExactDate;
  // final bool closeOnDone;
  // final String? closeAfterDate;
  // final int? closeAfterDays;
  // final int? closeAfterHr;
  // final int? closeAfterMin;
  // final bool trackPoints;
  // final int? points;
  // final bool hasCustomEndCard;
  // final String? endTitle;
  // final String? endMessage;
  // final String? endImage;
  // final bool openToAll;
  final String? releaseType;
  final bool hideTitleCard;
  final String? conditions;
  final bool hasCardGrouping;
  final String? group;
  final bool hasCompleted;

  final Map<String, dynamic> extra;

  Lesson({
    required this.id,
    required this.name,
    this.description,
    this.image,
    // this.releaseDate,
    // this.releaseHour,
    this.interval,
    required this.position,
    // this.notificationInterval,
    // this.notificationMessage,
    // this.notificationMessageTitle,
    this.checkIn,
    required this.program,
    required this.programId,
    required this.tags,
    // required this.isJitai,
    // this.jitaiCondition,
    required this.alwaysShow,
    // required this.randRelease,
    // required this.perUserRandomize,
    // this.randTimeStartHr,
    // this.randTimeEndHr,
    // this.randTimeStartMin,
    // this.randTimeEndMin,
    // this.randTimeHr,
    // this.randTimeMin,
    // required this.close,
    // required this.closeOnTime,
    // required this.closeOnExactDate,
    // required this.closeOnDone,
    // this.closeAfterDate,
    // this.closeAfterDays,
    // this.closeAfterHr,
    // this.closeAfterMin,
    // required this.trackPoints,
    // this.points,
    // required this.hasCustomEndCard,
    // this.endTitle,
    // this.endMessage,
    // this.endImage,
    // required this.openToAll,
    this.releaseType,
    required this.hideTitleCard,
    this.conditions,
    required this.hasCardGrouping,
    this.group,
    required this.hasCompleted,
    this.extra = const {},
  });

  factory Lesson.fromJson(Map<String, dynamic> json) {
    // Define known fields to exclude from extra
    final knownFields = {
      'id',
      'name',
      'description',
      'image',
      'interval',
      'position',
      'check_in',
      'program',
      'program_id',
      'tags',
      'always_show',
      'release_type',
      'hide_title_card',
      'conditions',
      'has_card_grouping',
      'group',
      'has_completed',
    };

    // Extract extra fields (dart_eval doesn't support removeWhere)
    final extra = <String, dynamic>{};
    for (final key in json.keys) {
      if (!knownFields.contains(key)) {
        extra[key] = json[key];
      }
    }

    return Lesson(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String?,
      image: json['image'] as String?,
      // releaseDate: json['release_date'] as String?,
      // releaseHour: json['release_hour'] as String?,
      interval: json['interval'] as int?,
      position: json['position'] as int,
      // notificationInterval: json['notification_interval'] as int?,
      // notificationMessage: json['notification_message'] as String?,
      // notificationMessageTitle: json['notification_message_title'] as String?,
      checkIn: json['check_in'] as String?,
      program: json['program'] as int,
      programId: json['program_id'] as int,
      tags: json['tags'] as List<String>,
      // isJitai: json['is_jitai'] as bool,
      // jitaiCondition: json['jitai_condition'] as String?,
      alwaysShow: json['always_show'] as bool,
      // randRelease: json['rand_release'] as bool,
      // perUserRandomize: json['per_user_randomize'] as bool,
      // randTimeStartHr: json['rand_time_start_hr'] as int?,
      // randTimeEndHr: json['rand_time_end_hr'] as int?,
      // randTimeStartMin: json['rand_time_start_min'] as int?,
      // randTimeEndMin: json['rand_time_end_min'] as int?,
      // randTimeHr: json['rand_time_hr'] as int?,
      // randTimeMin: json['rand_time_min'] as int?,
      // close: json['close'] as bool,
      // closeOnTime: json['close_on_time'] as bool,
      // closeOnExactDate: json['close_on_exact_date'] as bool,
      // closeOnDone: json['close_on_done'] as bool,
      // closeAfterDate: json['close_after_date'] as String?,
      // closeAfterDays: json['close_after_days'] as int?,
      // closeAfterHr: json['close_after_hr'] as int?,
      // closeAfterMin: json['close_after_min'] as int?,
      // trackPoints: json['track_points'] as bool,
      // points: json['points'] as int?,
      // hasCustomEndCard: json['has_custom_end_card'] as bool,
      // endTitle: json['end_title'] as String?,
      // endMessage: json['end_message'] as String?,
      // endImage: json['end_image'] as String?,
      // openToAll: json['open_to_all'] as bool,
      releaseType: json['release_type'] as String?,
      hideTitleCard: json['hide_title_card'] as bool,
      conditions: json['conditions'] as String?,
      hasCardGrouping: json['has_card_grouping'] as bool,
      group: json['group'] as String?,
      hasCompleted: json['has_completed'] as bool,
      extra: extra,
    );
  }

  Map<String, dynamic> toJson() {
    final result = {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      // 'release_date': releaseDate,
      // 'release_hour': releaseHour,
      'interval': interval,
      'position': position,
      // 'notification_interval': notificationInterval,
      // 'notification_message': notificationMessage,
      // 'notification_message_title': notificationMessageTitle,
      'check_in': checkIn,
      'program': program,
      'program_id': programId,
      'tags': tags,
      // 'is_jitai': isJitai,
      // 'jitai_condition': jitaiCondition,
      'always_show': alwaysShow,
      // 'rand_release': randRelease,
      // 'per_user_randomize': perUserRandomize,
      // 'rand_time_start_hr': randTimeStartHr,
      // 'rand_time_end_hr': randTimeEndHr,
      // 'rand_time_start_min': randTimeStartMin,
      // 'rand_time_end_min': randTimeEndMin,
      // 'rand_time_hr': randTimeHr,
      // 'rand_time_min': randTimeMin,
      // 'close': close,
      // 'close_on_time': closeOnTime,
      // 'close_on_exact_date': closeOnExactDate,
      // 'close_on_done': closeOnDone,
      // 'close_after_date': closeAfterDate,
      // 'close_after_days': closeAfterDays,
      // 'close_after_hr': closeAfterHr,
      // 'close_after_min': closeAfterMin,
      // 'track_points': trackPoints,
      // 'points': points,
      // 'has_custom_end_card': hasCustomEndCard,
      // 'end_title': endTitle,
      // 'end_message': endMessage,
      // 'end_image': endImage,
      // 'open_to_all': openToAll,
      'release_type': releaseType,
      'hide_title_card': hideTitleCard,
      'conditions': conditions,
      'has_card_grouping': hasCardGrouping,
      'group': group,
      'has_completed': hasCompleted,
    };

    // Add extra fields using for-in loop (dart_eval doesn't support spread or forEach)
    for (final key in extra.keys) {
      result[key] = extra[key];
    }

    return result;
  }
}
