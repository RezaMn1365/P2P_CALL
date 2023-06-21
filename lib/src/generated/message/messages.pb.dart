///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

enum CommandMessage_Command {
  getLocation, 
  getAcceleration, 
  getCompass, 
  getBattery, 
  getGyroscope, 
  getDirectoryInfo, 
  videoRecord, 
  audioRecord, 
  takePhoto, 
  notSet
}

class CommandMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CommandMessage_Command> _CommandMessage_CommandByTag = {
    1 : CommandMessage_Command.getLocation,
    2 : CommandMessage_Command.getAcceleration,
    3 : CommandMessage_Command.getCompass,
    4 : CommandMessage_Command.getBattery,
    5 : CommandMessage_Command.getGyroscope,
    6 : CommandMessage_Command.getDirectoryInfo,
    7 : CommandMessage_Command.videoRecord,
    8 : CommandMessage_Command.audioRecord,
    9 : CommandMessage_Command.takePhoto,
    0 : CommandMessage_Command.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CommandMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..aOM<GetLocation>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getLocation', protoName: 'getLocation', subBuilder: GetLocation.create)
    ..aOM<GetAcceleration>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getAcceleration', protoName: 'getAcceleration', subBuilder: GetAcceleration.create)
    ..aOM<GetCompass>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getCompass', protoName: 'getCompass', subBuilder: GetCompass.create)
    ..aOM<GetBattery>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getBattery', protoName: 'getBattery', subBuilder: GetBattery.create)
    ..aOM<GetGyroscope>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getGyroscope', protoName: 'getGyroscope', subBuilder: GetGyroscope.create)
    ..aOM<GetDirectoryInfo>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'getDirectoryInfo', protoName: 'getDirectoryInfo', subBuilder: GetDirectoryInfo.create)
    ..aOM<VideoRecord>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'videoRecord', protoName: 'videoRecord', subBuilder: VideoRecord.create)
    ..aOM<AudioRecord>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audioRecord', protoName: 'audioRecord', subBuilder: AudioRecord.create)
    ..aOM<TakePhoto>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'takePhoto', protoName: 'takePhoto', subBuilder: TakePhoto.create)
    ..hasRequiredFields = false
  ;

  CommandMessage._() : super();
  factory CommandMessage({
    GetLocation? getLocation,
    GetAcceleration? getAcceleration,
    GetCompass? getCompass,
    GetBattery? getBattery,
    GetGyroscope? getGyroscope,
    GetDirectoryInfo? getDirectoryInfo,
    VideoRecord? videoRecord,
    AudioRecord? audioRecord,
    TakePhoto? takePhoto,
  }) {
    final _result = create();
    if (getLocation != null) {
      _result.getLocation = getLocation;
    }
    if (getAcceleration != null) {
      _result.getAcceleration = getAcceleration;
    }
    if (getCompass != null) {
      _result.getCompass = getCompass;
    }
    if (getBattery != null) {
      _result.getBattery = getBattery;
    }
    if (getGyroscope != null) {
      _result.getGyroscope = getGyroscope;
    }
    if (getDirectoryInfo != null) {
      _result.getDirectoryInfo = getDirectoryInfo;
    }
    if (videoRecord != null) {
      _result.videoRecord = videoRecord;
    }
    if (audioRecord != null) {
      _result.audioRecord = audioRecord;
    }
    if (takePhoto != null) {
      _result.takePhoto = takePhoto;
    }
    return _result;
  }
  factory CommandMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CommandMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CommandMessage clone() => CommandMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CommandMessage copyWith(void Function(CommandMessage) updates) => super.copyWith((message) => updates(message as CommandMessage)) as CommandMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CommandMessage create() => CommandMessage._();
  CommandMessage createEmptyInstance() => create();
  static $pb.PbList<CommandMessage> createRepeated() => $pb.PbList<CommandMessage>();
  @$core.pragma('dart2js:noInline')
  static CommandMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CommandMessage>(create);
  static CommandMessage? _defaultInstance;

  CommandMessage_Command whichCommand() => _CommandMessage_CommandByTag[$_whichOneof(0)]!;
  void clearCommand() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  GetLocation get getLocation => $_getN(0);
  @$pb.TagNumber(1)
  set getLocation(GetLocation v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasGetLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearGetLocation() => clearField(1);
  @$pb.TagNumber(1)
  GetLocation ensureGetLocation() => $_ensure(0);

  @$pb.TagNumber(2)
  GetAcceleration get getAcceleration => $_getN(1);
  @$pb.TagNumber(2)
  set getAcceleration(GetAcceleration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGetAcceleration() => $_has(1);
  @$pb.TagNumber(2)
  void clearGetAcceleration() => clearField(2);
  @$pb.TagNumber(2)
  GetAcceleration ensureGetAcceleration() => $_ensure(1);

  @$pb.TagNumber(3)
  GetCompass get getCompass => $_getN(2);
  @$pb.TagNumber(3)
  set getCompass(GetCompass v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGetCompass() => $_has(2);
  @$pb.TagNumber(3)
  void clearGetCompass() => clearField(3);
  @$pb.TagNumber(3)
  GetCompass ensureGetCompass() => $_ensure(2);

  @$pb.TagNumber(4)
  GetBattery get getBattery => $_getN(3);
  @$pb.TagNumber(4)
  set getBattery(GetBattery v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGetBattery() => $_has(3);
  @$pb.TagNumber(4)
  void clearGetBattery() => clearField(4);
  @$pb.TagNumber(4)
  GetBattery ensureGetBattery() => $_ensure(3);

  @$pb.TagNumber(5)
  GetGyroscope get getGyroscope => $_getN(4);
  @$pb.TagNumber(5)
  set getGyroscope(GetGyroscope v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGetGyroscope() => $_has(4);
  @$pb.TagNumber(5)
  void clearGetGyroscope() => clearField(5);
  @$pb.TagNumber(5)
  GetGyroscope ensureGetGyroscope() => $_ensure(4);

  @$pb.TagNumber(6)
  GetDirectoryInfo get getDirectoryInfo => $_getN(5);
  @$pb.TagNumber(6)
  set getDirectoryInfo(GetDirectoryInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasGetDirectoryInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearGetDirectoryInfo() => clearField(6);
  @$pb.TagNumber(6)
  GetDirectoryInfo ensureGetDirectoryInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  VideoRecord get videoRecord => $_getN(6);
  @$pb.TagNumber(7)
  set videoRecord(VideoRecord v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasVideoRecord() => $_has(6);
  @$pb.TagNumber(7)
  void clearVideoRecord() => clearField(7);
  @$pb.TagNumber(7)
  VideoRecord ensureVideoRecord() => $_ensure(6);

  @$pb.TagNumber(8)
  AudioRecord get audioRecord => $_getN(7);
  @$pb.TagNumber(8)
  set audioRecord(AudioRecord v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasAudioRecord() => $_has(7);
  @$pb.TagNumber(8)
  void clearAudioRecord() => clearField(8);
  @$pb.TagNumber(8)
  AudioRecord ensureAudioRecord() => $_ensure(7);

  @$pb.TagNumber(9)
  TakePhoto get takePhoto => $_getN(8);
  @$pb.TagNumber(9)
  set takePhoto(TakePhoto v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasTakePhoto() => $_has(8);
  @$pb.TagNumber(9)
  void clearTakePhoto() => clearField(9);
  @$pb.TagNumber(9)
  TakePhoto ensureTakePhoto() => $_ensure(8);
}

class GetLocation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetLocation._() : super();
  factory GetLocation() => create();
  factory GetLocation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetLocation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetLocation clone() => GetLocation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetLocation copyWith(void Function(GetLocation) updates) => super.copyWith((message) => updates(message as GetLocation)) as GetLocation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocation create() => GetLocation._();
  GetLocation createEmptyInstance() => create();
  static $pb.PbList<GetLocation> createRepeated() => $pb.PbList<GetLocation>();
  @$core.pragma('dart2js:noInline')
  static GetLocation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocation>(create);
  static GetLocation? _defaultInstance;
}

class GetDirectoryInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetDirectoryInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'path')
    ..hasRequiredFields = false
  ;

  GetDirectoryInfo._() : super();
  factory GetDirectoryInfo({
    $core.String? path,
  }) {
    final _result = create();
    if (path != null) {
      _result.path = path;
    }
    return _result;
  }
  factory GetDirectoryInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetDirectoryInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetDirectoryInfo clone() => GetDirectoryInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetDirectoryInfo copyWith(void Function(GetDirectoryInfo) updates) => super.copyWith((message) => updates(message as GetDirectoryInfo)) as GetDirectoryInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetDirectoryInfo create() => GetDirectoryInfo._();
  GetDirectoryInfo createEmptyInstance() => create();
  static $pb.PbList<GetDirectoryInfo> createRepeated() => $pb.PbList<GetDirectoryInfo>();
  @$core.pragma('dart2js:noInline')
  static GetDirectoryInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetDirectoryInfo>(create);
  static GetDirectoryInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);
}

class GetAcceleration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetAcceleration', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetAcceleration._() : super();
  factory GetAcceleration() => create();
  factory GetAcceleration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetAcceleration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetAcceleration clone() => GetAcceleration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetAcceleration copyWith(void Function(GetAcceleration) updates) => super.copyWith((message) => updates(message as GetAcceleration)) as GetAcceleration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetAcceleration create() => GetAcceleration._();
  GetAcceleration createEmptyInstance() => create();
  static $pb.PbList<GetAcceleration> createRepeated() => $pb.PbList<GetAcceleration>();
  @$core.pragma('dart2js:noInline')
  static GetAcceleration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetAcceleration>(create);
  static GetAcceleration? _defaultInstance;
}

class GetCompass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCompass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetCompass._() : super();
  factory GetCompass() => create();
  factory GetCompass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCompass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCompass clone() => GetCompass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCompass copyWith(void Function(GetCompass) updates) => super.copyWith((message) => updates(message as GetCompass)) as GetCompass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCompass create() => GetCompass._();
  GetCompass createEmptyInstance() => create();
  static $pb.PbList<GetCompass> createRepeated() => $pb.PbList<GetCompass>();
  @$core.pragma('dart2js:noInline')
  static GetCompass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCompass>(create);
  static GetCompass? _defaultInstance;
}

class GetBattery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetBattery', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetBattery._() : super();
  factory GetBattery() => create();
  factory GetBattery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBattery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBattery clone() => GetBattery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBattery copyWith(void Function(GetBattery) updates) => super.copyWith((message) => updates(message as GetBattery)) as GetBattery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetBattery create() => GetBattery._();
  GetBattery createEmptyInstance() => create();
  static $pb.PbList<GetBattery> createRepeated() => $pb.PbList<GetBattery>();
  @$core.pragma('dart2js:noInline')
  static GetBattery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBattery>(create);
  static GetBattery? _defaultInstance;
}

class GetGyroscope extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetGyroscope', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetGyroscope._() : super();
  factory GetGyroscope() => create();
  factory GetGyroscope.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetGyroscope.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetGyroscope clone() => GetGyroscope()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetGyroscope copyWith(void Function(GetGyroscope) updates) => super.copyWith((message) => updates(message as GetGyroscope)) as GetGyroscope; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetGyroscope create() => GetGyroscope._();
  GetGyroscope createEmptyInstance() => create();
  static $pb.PbList<GetGyroscope> createRepeated() => $pb.PbList<GetGyroscope>();
  @$core.pragma('dart2js:noInline')
  static GetGyroscope getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetGyroscope>(create);
  static GetGyroscope? _defaultInstance;
}

class VideoRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VideoRecord', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  VideoRecord._() : super();
  factory VideoRecord({
    $core.int? start,
    $core.int? duration,
  }) {
    final _result = create();
    if (start != null) {
      _result.start = start;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    return _result;
  }
  factory VideoRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VideoRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VideoRecord clone() => VideoRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VideoRecord copyWith(void Function(VideoRecord) updates) => super.copyWith((message) => updates(message as VideoRecord)) as VideoRecord; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VideoRecord create() => VideoRecord._();
  VideoRecord createEmptyInstance() => create();
  static $pb.PbList<VideoRecord> createRepeated() => $pb.PbList<VideoRecord>();
  @$core.pragma('dart2js:noInline')
  static VideoRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VideoRecord>(create);
  static VideoRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get start => $_getIZ(0);
  @$pb.TagNumber(1)
  set start($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => clearField(2);
}

class AudioRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AudioRecord', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'start', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'duration', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AudioRecord._() : super();
  factory AudioRecord({
    $core.int? start,
    $core.int? duration,
  }) {
    final _result = create();
    if (start != null) {
      _result.start = start;
    }
    if (duration != null) {
      _result.duration = duration;
    }
    return _result;
  }
  factory AudioRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AudioRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AudioRecord clone() => AudioRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AudioRecord copyWith(void Function(AudioRecord) updates) => super.copyWith((message) => updates(message as AudioRecord)) as AudioRecord; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AudioRecord create() => AudioRecord._();
  AudioRecord createEmptyInstance() => create();
  static $pb.PbList<AudioRecord> createRepeated() => $pb.PbList<AudioRecord>();
  @$core.pragma('dart2js:noInline')
  static AudioRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AudioRecord>(create);
  static AudioRecord? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get start => $_getIZ(0);
  @$pb.TagNumber(1)
  set start($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get duration => $_getIZ(1);
  @$pb.TagNumber(2)
  set duration($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDuration() => $_has(1);
  @$pb.TagNumber(2)
  void clearDuration() => clearField(2);
}

class TakePhoto extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TakePhoto', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resulation')
    ..hasRequiredFields = false
  ;

  TakePhoto._() : super();
  factory TakePhoto({
    $core.String? resulation,
  }) {
    final _result = create();
    if (resulation != null) {
      _result.resulation = resulation;
    }
    return _result;
  }
  factory TakePhoto.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TakePhoto.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TakePhoto clone() => TakePhoto()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TakePhoto copyWith(void Function(TakePhoto) updates) => super.copyWith((message) => updates(message as TakePhoto)) as TakePhoto; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TakePhoto create() => TakePhoto._();
  TakePhoto createEmptyInstance() => create();
  static $pb.PbList<TakePhoto> createRepeated() => $pb.PbList<TakePhoto>();
  @$core.pragma('dart2js:noInline')
  static TakePhoto getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TakePhoto>(create);
  static TakePhoto? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get resulation => $_getSZ(0);
  @$pb.TagNumber(1)
  set resulation($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResulation() => $_has(0);
  @$pb.TagNumber(1)
  void clearResulation() => clearField(1);
}

enum ReportMessage_Report {
  location, 
  acceleration, 
  compass, 
  battery, 
  gyroscope, 
  directoryInfo, 
  audio, 
  photo, 
  video, 
  notSet
}

class ReportMessage extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ReportMessage_Report> _ReportMessage_ReportByTag = {
    1 : ReportMessage_Report.location,
    2 : ReportMessage_Report.acceleration,
    3 : ReportMessage_Report.compass,
    4 : ReportMessage_Report.battery,
    5 : ReportMessage_Report.gyroscope,
    6 : ReportMessage_Report.directoryInfo,
    7 : ReportMessage_Report.audio,
    8 : ReportMessage_Report.photo,
    9 : ReportMessage_Report.video,
    0 : ReportMessage_Report.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReportMessage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 5, 6, 7, 8, 9])
    ..aOM<Location>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', subBuilder: Location.create)
    ..aOM<Acceleration>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceleration', subBuilder: Acceleration.create)
    ..aOM<Compass>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'compass', subBuilder: Compass.create)
    ..aOM<Battery>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'battery', subBuilder: Battery.create)
    ..aOM<Gyroscope>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gyroscope', subBuilder: Gyroscope.create)
    ..aOM<DirectoryInfo>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'directoryInfo', protoName: 'directoryInfo', subBuilder: DirectoryInfo.create)
    ..aOM<Audio>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'audio', subBuilder: Audio.create)
    ..aOM<Photo>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'photo', subBuilder: Photo.create)
    ..aOM<Video>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'video', subBuilder: Video.create)
    ..hasRequiredFields = false
  ;

  ReportMessage._() : super();
  factory ReportMessage({
    Location? location,
    Acceleration? acceleration,
    Compass? compass,
    Battery? battery,
    Gyroscope? gyroscope,
    DirectoryInfo? directoryInfo,
    Audio? audio,
    Photo? photo,
    Video? video,
  }) {
    final _result = create();
    if (location != null) {
      _result.location = location;
    }
    if (acceleration != null) {
      _result.acceleration = acceleration;
    }
    if (compass != null) {
      _result.compass = compass;
    }
    if (battery != null) {
      _result.battery = battery;
    }
    if (gyroscope != null) {
      _result.gyroscope = gyroscope;
    }
    if (directoryInfo != null) {
      _result.directoryInfo = directoryInfo;
    }
    if (audio != null) {
      _result.audio = audio;
    }
    if (photo != null) {
      _result.photo = photo;
    }
    if (video != null) {
      _result.video = video;
    }
    return _result;
  }
  factory ReportMessage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReportMessage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReportMessage clone() => ReportMessage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReportMessage copyWith(void Function(ReportMessage) updates) => super.copyWith((message) => updates(message as ReportMessage)) as ReportMessage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReportMessage create() => ReportMessage._();
  ReportMessage createEmptyInstance() => create();
  static $pb.PbList<ReportMessage> createRepeated() => $pb.PbList<ReportMessage>();
  @$core.pragma('dart2js:noInline')
  static ReportMessage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReportMessage>(create);
  static ReportMessage? _defaultInstance;

  ReportMessage_Report whichReport() => _ReportMessage_ReportByTag[$_whichOneof(0)]!;
  void clearReport() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Location get location => $_getN(0);
  @$pb.TagNumber(1)
  set location(Location v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocation() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocation() => clearField(1);
  @$pb.TagNumber(1)
  Location ensureLocation() => $_ensure(0);

  @$pb.TagNumber(2)
  Acceleration get acceleration => $_getN(1);
  @$pb.TagNumber(2)
  set acceleration(Acceleration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAcceleration() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceleration() => clearField(2);
  @$pb.TagNumber(2)
  Acceleration ensureAcceleration() => $_ensure(1);

  @$pb.TagNumber(3)
  Compass get compass => $_getN(2);
  @$pb.TagNumber(3)
  set compass(Compass v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCompass() => $_has(2);
  @$pb.TagNumber(3)
  void clearCompass() => clearField(3);
  @$pb.TagNumber(3)
  Compass ensureCompass() => $_ensure(2);

  @$pb.TagNumber(4)
  Battery get battery => $_getN(3);
  @$pb.TagNumber(4)
  set battery(Battery v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasBattery() => $_has(3);
  @$pb.TagNumber(4)
  void clearBattery() => clearField(4);
  @$pb.TagNumber(4)
  Battery ensureBattery() => $_ensure(3);

  @$pb.TagNumber(5)
  Gyroscope get gyroscope => $_getN(4);
  @$pb.TagNumber(5)
  set gyroscope(Gyroscope v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGyroscope() => $_has(4);
  @$pb.TagNumber(5)
  void clearGyroscope() => clearField(5);
  @$pb.TagNumber(5)
  Gyroscope ensureGyroscope() => $_ensure(4);

  @$pb.TagNumber(6)
  DirectoryInfo get directoryInfo => $_getN(5);
  @$pb.TagNumber(6)
  set directoryInfo(DirectoryInfo v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasDirectoryInfo() => $_has(5);
  @$pb.TagNumber(6)
  void clearDirectoryInfo() => clearField(6);
  @$pb.TagNumber(6)
  DirectoryInfo ensureDirectoryInfo() => $_ensure(5);

  @$pb.TagNumber(7)
  Audio get audio => $_getN(6);
  @$pb.TagNumber(7)
  set audio(Audio v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasAudio() => $_has(6);
  @$pb.TagNumber(7)
  void clearAudio() => clearField(7);
  @$pb.TagNumber(7)
  Audio ensureAudio() => $_ensure(6);

  @$pb.TagNumber(8)
  Photo get photo => $_getN(7);
  @$pb.TagNumber(8)
  set photo(Photo v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPhoto() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhoto() => clearField(8);
  @$pb.TagNumber(8)
  Photo ensurePhoto() => $_ensure(7);

  @$pb.TagNumber(9)
  Video get video => $_getN(8);
  @$pb.TagNumber(9)
  set video(Video v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasVideo() => $_has(8);
  @$pb.TagNumber(9)
  void clearVideo() => clearField(9);
  @$pb.TagNumber(9)
  Video ensureVideo() => $_ensure(8);
}

class Sample extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Sample', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.O3)
    ..aOM<ReportMessage>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'report', subBuilder: ReportMessage.create)
    ..hasRequiredFields = false
  ;

  Sample._() : super();
  factory Sample({
    $core.int? timestamp,
    ReportMessage? report,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (report != null) {
      _result.report = report;
    }
    return _result;
  }
  factory Sample.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Sample.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Sample clone() => Sample()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Sample copyWith(void Function(Sample) updates) => super.copyWith((message) => updates(message as Sample)) as Sample; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Sample create() => Sample._();
  Sample createEmptyInstance() => create();
  static $pb.PbList<Sample> createRepeated() => $pb.PbList<Sample>();
  @$core.pragma('dart2js:noInline')
  static Sample getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Sample>(create);
  static Sample? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timestamp => $_getIZ(0);
  @$pb.TagNumber(1)
  set timestamp($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  ReportMessage get report => $_getN(1);
  @$pb.TagNumber(2)
  set report(ReportMessage v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReport() => $_has(1);
  @$pb.TagNumber(2)
  void clearReport() => clearField(2);
  @$pb.TagNumber(2)
  ReportMessage ensureReport() => $_ensure(1);
}

class Photo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Photo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  Photo._() : super();
  factory Photo({
    $core.Iterable<$core.List<$core.int>>? content,
  }) {
    final _result = create();
    if (content != null) {
      _result.content.addAll(content);
    }
    return _result;
  }
  factory Photo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Photo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Photo clone() => Photo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Photo copyWith(void Function(Photo) updates) => super.copyWith((message) => updates(message as Photo)) as Photo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Photo create() => Photo._();
  Photo createEmptyInstance() => create();
  static $pb.PbList<Photo> createRepeated() => $pb.PbList<Photo>();
  @$core.pragma('dart2js:noInline')
  static Photo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Photo>(create);
  static Photo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get content => $_getList(0);
}

class Audio extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Audio', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  Audio._() : super();
  factory Audio({
    $core.Iterable<$core.List<$core.int>>? content,
  }) {
    final _result = create();
    if (content != null) {
      _result.content.addAll(content);
    }
    return _result;
  }
  factory Audio.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Audio.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Audio clone() => Audio()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Audio copyWith(void Function(Audio) updates) => super.copyWith((message) => updates(message as Audio)) as Audio; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Audio create() => Audio._();
  Audio createEmptyInstance() => create();
  static $pb.PbList<Audio> createRepeated() => $pb.PbList<Audio>();
  @$core.pragma('dart2js:noInline')
  static Audio getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Audio>(create);
  static Audio? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get content => $_getList(0);
}

class Video extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Video', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'content', $pb.PbFieldType.PY)
    ..hasRequiredFields = false
  ;

  Video._() : super();
  factory Video({
    $core.Iterable<$core.List<$core.int>>? content,
  }) {
    final _result = create();
    if (content != null) {
      _result.content.addAll(content);
    }
    return _result;
  }
  factory Video.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Video.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Video clone() => Video()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Video copyWith(void Function(Video) updates) => super.copyWith((message) => updates(message as Video)) as Video; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Video create() => Video._();
  Video createEmptyInstance() => create();
  static $pb.PbList<Video> createRepeated() => $pb.PbList<Video>();
  @$core.pragma('dart2js:noInline')
  static Video getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Video>(create);
  static Video? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.List<$core.int>> get content => $_getList(0);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lng', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  Location._() : super();
  factory Location({
    $core.double? lat,
    $core.double? lng,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (lng != null) {
      _result.lng = lng;
    }
    return _result;
  }
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) => super.copyWith((message) => updates(message as Location)) as Location; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get lat => $_getN(0);
  @$pb.TagNumber(1)
  set lat($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLat() => $_has(0);
  @$pb.TagNumber(1)
  void clearLat() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get lng => $_getN(1);
  @$pb.TagNumber(2)
  set lng($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLng() => $_has(1);
  @$pb.TagNumber(2)
  void clearLng() => clearField(2);
}

class Acceleration extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Acceleration', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalAcceleration', $pb.PbFieldType.OD, protoName: 'totalAcceleration')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xAcceleration', $pb.PbFieldType.OD, protoName: 'xAcceleration')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'yAcceleration', $pb.PbFieldType.OD, protoName: 'yAcceleration')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zAcceleration', $pb.PbFieldType.OD, protoName: 'zAcceleration')
    ..hasRequiredFields = false
  ;

  Acceleration._() : super();
  factory Acceleration({
    $core.double? totalAcceleration,
    $core.double? xAcceleration,
    $core.double? yAcceleration,
    $core.double? zAcceleration,
  }) {
    final _result = create();
    if (totalAcceleration != null) {
      _result.totalAcceleration = totalAcceleration;
    }
    if (xAcceleration != null) {
      _result.xAcceleration = xAcceleration;
    }
    if (yAcceleration != null) {
      _result.yAcceleration = yAcceleration;
    }
    if (zAcceleration != null) {
      _result.zAcceleration = zAcceleration;
    }
    return _result;
  }
  factory Acceleration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Acceleration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Acceleration clone() => Acceleration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Acceleration copyWith(void Function(Acceleration) updates) => super.copyWith((message) => updates(message as Acceleration)) as Acceleration; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Acceleration create() => Acceleration._();
  Acceleration createEmptyInstance() => create();
  static $pb.PbList<Acceleration> createRepeated() => $pb.PbList<Acceleration>();
  @$core.pragma('dart2js:noInline')
  static Acceleration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Acceleration>(create);
  static Acceleration? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get totalAcceleration => $_getN(0);
  @$pb.TagNumber(1)
  set totalAcceleration($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalAcceleration() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalAcceleration() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get xAcceleration => $_getN(1);
  @$pb.TagNumber(2)
  set xAcceleration($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasXAcceleration() => $_has(1);
  @$pb.TagNumber(2)
  void clearXAcceleration() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get yAcceleration => $_getN(2);
  @$pb.TagNumber(3)
  set yAcceleration($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYAcceleration() => $_has(2);
  @$pb.TagNumber(3)
  void clearYAcceleration() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get zAcceleration => $_getN(3);
  @$pb.TagNumber(4)
  set zAcceleration($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasZAcceleration() => $_has(3);
  @$pb.TagNumber(4)
  void clearZAcceleration() => clearField(4);
}

class Compass extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Compass', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'direction', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xMagnetometer', $pb.PbFieldType.OD, protoName: 'xMagnetometer')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'yMagnetometer', $pb.PbFieldType.OD, protoName: 'yMagnetometer')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zMagnetometer', $pb.PbFieldType.OD, protoName: 'zMagnetometer')
    ..hasRequiredFields = false
  ;

  Compass._() : super();
  factory Compass({
    $core.double? direction,
    $core.double? xMagnetometer,
    $core.double? yMagnetometer,
    $core.double? zMagnetometer,
  }) {
    final _result = create();
    if (direction != null) {
      _result.direction = direction;
    }
    if (xMagnetometer != null) {
      _result.xMagnetometer = xMagnetometer;
    }
    if (yMagnetometer != null) {
      _result.yMagnetometer = yMagnetometer;
    }
    if (zMagnetometer != null) {
      _result.zMagnetometer = zMagnetometer;
    }
    return _result;
  }
  factory Compass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Compass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Compass clone() => Compass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Compass copyWith(void Function(Compass) updates) => super.copyWith((message) => updates(message as Compass)) as Compass; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Compass create() => Compass._();
  Compass createEmptyInstance() => create();
  static $pb.PbList<Compass> createRepeated() => $pb.PbList<Compass>();
  @$core.pragma('dart2js:noInline')
  static Compass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Compass>(create);
  static Compass? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get direction => $_getN(0);
  @$pb.TagNumber(1)
  set direction($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDirection() => $_has(0);
  @$pb.TagNumber(1)
  void clearDirection() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get xMagnetometer => $_getN(1);
  @$pb.TagNumber(2)
  set xMagnetometer($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasXMagnetometer() => $_has(1);
  @$pb.TagNumber(2)
  void clearXMagnetometer() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get yMagnetometer => $_getN(2);
  @$pb.TagNumber(3)
  set yMagnetometer($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYMagnetometer() => $_has(2);
  @$pb.TagNumber(3)
  void clearYMagnetometer() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get zMagnetometer => $_getN(3);
  @$pb.TagNumber(4)
  set zMagnetometer($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasZMagnetometer() => $_has(3);
  @$pb.TagNumber(4)
  void clearZMagnetometer() => clearField(4);
}

class Gyroscope extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Gyroscope', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..p<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allAxis', $pb.PbFieldType.KD, protoName: 'allAxis')
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'xGyroscpoe', $pb.PbFieldType.OD, protoName: 'xGyroscpoe')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'yGyroscpoe', $pb.PbFieldType.OD, protoName: 'yGyroscpoe')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'zGyroscpoe', $pb.PbFieldType.OD, protoName: 'zGyroscpoe')
    ..hasRequiredFields = false
  ;

  Gyroscope._() : super();
  factory Gyroscope({
    $core.Iterable<$core.double>? allAxis,
    $core.double? xGyroscpoe,
    $core.double? yGyroscpoe,
    $core.double? zGyroscpoe,
  }) {
    final _result = create();
    if (allAxis != null) {
      _result.allAxis.addAll(allAxis);
    }
    if (xGyroscpoe != null) {
      _result.xGyroscpoe = xGyroscpoe;
    }
    if (yGyroscpoe != null) {
      _result.yGyroscpoe = yGyroscpoe;
    }
    if (zGyroscpoe != null) {
      _result.zGyroscpoe = zGyroscpoe;
    }
    return _result;
  }
  factory Gyroscope.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Gyroscope.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Gyroscope clone() => Gyroscope()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Gyroscope copyWith(void Function(Gyroscope) updates) => super.copyWith((message) => updates(message as Gyroscope)) as Gyroscope; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Gyroscope create() => Gyroscope._();
  Gyroscope createEmptyInstance() => create();
  static $pb.PbList<Gyroscope> createRepeated() => $pb.PbList<Gyroscope>();
  @$core.pragma('dart2js:noInline')
  static Gyroscope getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Gyroscope>(create);
  static Gyroscope? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.double> get allAxis => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get xGyroscpoe => $_getN(1);
  @$pb.TagNumber(2)
  set xGyroscpoe($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasXGyroscpoe() => $_has(1);
  @$pb.TagNumber(2)
  void clearXGyroscpoe() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get yGyroscpoe => $_getN(2);
  @$pb.TagNumber(3)
  set yGyroscpoe($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasYGyroscpoe() => $_has(2);
  @$pb.TagNumber(3)
  void clearYGyroscpoe() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get zGyroscpoe => $_getN(3);
  @$pb.TagNumber(4)
  set zGyroscpoe($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasZGyroscpoe() => $_has(3);
  @$pb.TagNumber(4)
  void clearZGyroscpoe() => clearField(4);
}

class Battery extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Battery', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'charge', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'health')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status')
    ..hasRequiredFields = false
  ;

  Battery._() : super();
  factory Battery({
    $core.int? charge,
    $core.String? health,
    $core.String? status,
  }) {
    final _result = create();
    if (charge != null) {
      _result.charge = charge;
    }
    if (health != null) {
      _result.health = health;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }
  factory Battery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Battery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Battery clone() => Battery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Battery copyWith(void Function(Battery) updates) => super.copyWith((message) => updates(message as Battery)) as Battery; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Battery create() => Battery._();
  Battery createEmptyInstance() => create();
  static $pb.PbList<Battery> createRepeated() => $pb.PbList<Battery>();
  @$core.pragma('dart2js:noInline')
  static Battery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Battery>(create);
  static Battery? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get charge => $_getIZ(0);
  @$pb.TagNumber(1)
  set charge($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCharge() => $_has(0);
  @$pb.TagNumber(1)
  void clearCharge() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get health => $_getSZ(1);
  @$pb.TagNumber(2)
  set health($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHealth() => $_has(1);
  @$pb.TagNumber(2)
  void clearHealth() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get status => $_getSZ(2);
  @$pb.TagNumber(3)
  set status($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
}

class DirectoryInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DirectoryInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..pc<FileInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'files', $pb.PbFieldType.PM, subBuilder: FileInfo.create)
    ..hasRequiredFields = false
  ;

  DirectoryInfo._() : super();
  factory DirectoryInfo({
    $core.Iterable<FileInfo>? files,
  }) {
    final _result = create();
    if (files != null) {
      _result.files.addAll(files);
    }
    return _result;
  }
  factory DirectoryInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DirectoryInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DirectoryInfo clone() => DirectoryInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DirectoryInfo copyWith(void Function(DirectoryInfo) updates) => super.copyWith((message) => updates(message as DirectoryInfo)) as DirectoryInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DirectoryInfo create() => DirectoryInfo._();
  DirectoryInfo createEmptyInstance() => create();
  static $pb.PbList<DirectoryInfo> createRepeated() => $pb.PbList<DirectoryInfo>();
  @$core.pragma('dart2js:noInline')
  static DirectoryInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DirectoryInfo>(create);
  static DirectoryInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<FileInfo> get files => $_getList(0);
}

class FileInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FileInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'device'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extention')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'relativePath', protoName: 'relativePath')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'size', $pb.PbFieldType.O3)
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isDirectory', protoName: 'isDirectory')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'modifiedAt', protoName: 'modifiedAt')
    ..hasRequiredFields = false
  ;

  FileInfo._() : super();
  factory FileInfo({
    $core.String? name,
    $core.String? extention,
    $core.String? relativePath,
    $core.int? size,
    $core.bool? isDirectory,
    $core.String? modifiedAt,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (extention != null) {
      _result.extention = extention;
    }
    if (relativePath != null) {
      _result.relativePath = relativePath;
    }
    if (size != null) {
      _result.size = size;
    }
    if (isDirectory != null) {
      _result.isDirectory = isDirectory;
    }
    if (modifiedAt != null) {
      _result.modifiedAt = modifiedAt;
    }
    return _result;
  }
  factory FileInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FileInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FileInfo clone() => FileInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FileInfo copyWith(void Function(FileInfo) updates) => super.copyWith((message) => updates(message as FileInfo)) as FileInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FileInfo create() => FileInfo._();
  FileInfo createEmptyInstance() => create();
  static $pb.PbList<FileInfo> createRepeated() => $pb.PbList<FileInfo>();
  @$core.pragma('dart2js:noInline')
  static FileInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FileInfo>(create);
  static FileInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get extention => $_getSZ(1);
  @$pb.TagNumber(2)
  set extention($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExtention() => $_has(1);
  @$pb.TagNumber(2)
  void clearExtention() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get relativePath => $_getSZ(2);
  @$pb.TagNumber(3)
  set relativePath($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRelativePath() => $_has(2);
  @$pb.TagNumber(3)
  void clearRelativePath() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get size => $_getIZ(3);
  @$pb.TagNumber(4)
  set size($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSize() => $_has(3);
  @$pb.TagNumber(4)
  void clearSize() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isDirectory => $_getBF(4);
  @$pb.TagNumber(5)
  set isDirectory($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIsDirectory() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsDirectory() => clearField(5);

  @$pb.TagNumber(7)
  $core.String get modifiedAt => $_getSZ(5);
  @$pb.TagNumber(7)
  set modifiedAt($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasModifiedAt() => $_has(5);
  @$pb.TagNumber(7)
  void clearModifiedAt() => clearField(7);
}

