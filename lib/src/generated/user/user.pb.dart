///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Empty._() : super();
  factory Empty() => create();
  factory Empty.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Empty.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Empty clone() => Empty()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Empty copyWith(void Function(Empty) updates) => super.copyWith((message) => updates(message as Empty)) as Empty; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Empty create() => Empty._();
  Empty createEmptyInstance() => create();
  static $pb.PbList<Empty> createRepeated() => $pb.PbList<Empty>();
  @$core.pragma('dart2js:noInline')
  static Empty getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Empty>(create);
  static Empty? _defaultInstance;
}

class DefaultResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DefaultResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..hasRequiredFields = false
  ;

  DefaultResponse._() : super();
  factory DefaultResponse({
    $core.String? message,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    return _result;
  }
  factory DefaultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DefaultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DefaultResponse clone() => DefaultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DefaultResponse copyWith(void Function(DefaultResponse) updates) => super.copyWith((message) => updates(message as DefaultResponse)) as DefaultResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DefaultResponse create() => DefaultResponse._();
  DefaultResponse createEmptyInstance() => create();
  static $pb.PbList<DefaultResponse> createRepeated() => $pb.PbList<DefaultResponse>();
  @$core.pragma('dart2js:noInline')
  static DefaultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DefaultResponse>(create);
  static DefaultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);
}

class UserSigninRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserSigninRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'username')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'password')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agent')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details')
    ..hasRequiredFields = false
  ;

  UserSigninRequest._() : super();
  factory UserSigninRequest({
    $core.String? username,
    $core.String? password,
    $core.String? ip,
    $core.String? agent,
    $core.String? details,
  }) {
    final _result = create();
    if (username != null) {
      _result.username = username;
    }
    if (password != null) {
      _result.password = password;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    if (agent != null) {
      _result.agent = agent;
    }
    if (details != null) {
      _result.details = details;
    }
    return _result;
  }
  factory UserSigninRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSigninRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSigninRequest clone() => UserSigninRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSigninRequest copyWith(void Function(UserSigninRequest) updates) => super.copyWith((message) => updates(message as UserSigninRequest)) as UserSigninRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSigninRequest create() => UserSigninRequest._();
  UserSigninRequest createEmptyInstance() => create();
  static $pb.PbList<UserSigninRequest> createRepeated() => $pb.PbList<UserSigninRequest>();
  @$core.pragma('dart2js:noInline')
  static UserSigninRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSigninRequest>(create);
  static UserSigninRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ip => $_getSZ(2);
  @$pb.TagNumber(3)
  set ip($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIp() => $_has(2);
  @$pb.TagNumber(3)
  void clearIp() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get agent => $_getSZ(3);
  @$pb.TagNumber(4)
  set agent($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAgent() => $_has(3);
  @$pb.TagNumber(4)
  void clearAgent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get details => $_getSZ(4);
  @$pb.TagNumber(5)
  set details($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDetails() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetails() => clearField(5);
}

class UserSinginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UserSinginResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'exp', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  UserSinginResponse._() : super();
  factory UserSinginResponse({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.int? exp,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (exp != null) {
      _result.exp = exp;
    }
    return _result;
  }
  factory UserSinginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSinginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSinginResponse clone() => UserSinginResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSinginResponse copyWith(void Function(UserSinginResponse) updates) => super.copyWith((message) => updates(message as UserSinginResponse)) as UserSinginResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UserSinginResponse create() => UserSinginResponse._();
  UserSinginResponse createEmptyInstance() => create();
  static $pb.PbList<UserSinginResponse> createRepeated() => $pb.PbList<UserSinginResponse>();
  @$core.pragma('dart2js:noInline')
  static UserSinginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSinginResponse>(create);
  static UserSinginResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get exp => $_getIZ(2);
  @$pb.TagNumber(3)
  set exp($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasExp() => $_has(2);
  @$pb.TagNumber(3)
  void clearExp() => clearField(3);
}

class RenewTokenRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RenewTokenRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ip')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'agent')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'details')
    ..hasRequiredFields = false
  ;

  RenewTokenRequest._() : super();
  factory RenewTokenRequest({
    $core.String? accessToken,
    $core.String? refreshToken,
    $core.String? ip,
    $core.String? agent,
    $core.String? details,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    if (ip != null) {
      _result.ip = ip;
    }
    if (agent != null) {
      _result.agent = agent;
    }
    if (details != null) {
      _result.details = details;
    }
    return _result;
  }
  factory RenewTokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RenewTokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RenewTokenRequest clone() => RenewTokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RenewTokenRequest copyWith(void Function(RenewTokenRequest) updates) => super.copyWith((message) => updates(message as RenewTokenRequest)) as RenewTokenRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RenewTokenRequest create() => RenewTokenRequest._();
  RenewTokenRequest createEmptyInstance() => create();
  static $pb.PbList<RenewTokenRequest> createRepeated() => $pb.PbList<RenewTokenRequest>();
  @$core.pragma('dart2js:noInline')
  static RenewTokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RenewTokenRequest>(create);
  static RenewTokenRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ip => $_getSZ(2);
  @$pb.TagNumber(3)
  set ip($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIp() => $_has(2);
  @$pb.TagNumber(3)
  void clearIp() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get agent => $_getSZ(3);
  @$pb.TagNumber(4)
  set agent($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAgent() => $_has(3);
  @$pb.TagNumber(4)
  void clearAgent() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get details => $_getSZ(4);
  @$pb.TagNumber(5)
  set details($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDetails() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetails() => clearField(5);
}

class RenewTokenResonse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RenewTokenResonse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'refreshToken')
    ..hasRequiredFields = false
  ;

  RenewTokenResonse._() : super();
  factory RenewTokenResonse({
    $core.String? accessToken,
    $core.String? refreshToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    if (refreshToken != null) {
      _result.refreshToken = refreshToken;
    }
    return _result;
  }
  factory RenewTokenResonse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RenewTokenResonse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RenewTokenResonse clone() => RenewTokenResonse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RenewTokenResonse copyWith(void Function(RenewTokenResonse) updates) => super.copyWith((message) => updates(message as RenewTokenResonse)) as RenewTokenResonse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RenewTokenResonse create() => RenewTokenResonse._();
  RenewTokenResonse createEmptyInstance() => create();
  static $pb.PbList<RenewTokenResonse> createRepeated() => $pb.PbList<RenewTokenResonse>();
  @$core.pragma('dart2js:noInline')
  static RenewTokenResonse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RenewTokenResonse>(create);
  static RenewTokenResonse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get refreshToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set refreshToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRefreshToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearRefreshToken() => clearField(2);
}

class LogoutRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LogoutRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accessToken')
    ..hasRequiredFields = false
  ;

  LogoutRequest._() : super();
  factory LogoutRequest({
    $core.String? accessToken,
  }) {
    final _result = create();
    if (accessToken != null) {
      _result.accessToken = accessToken;
    }
    return _result;
  }
  factory LogoutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogoutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LogoutRequest clone() => LogoutRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LogoutRequest copyWith(void Function(LogoutRequest) updates) => super.copyWith((message) => updates(message as LogoutRequest)) as LogoutRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogoutRequest create() => LogoutRequest._();
  LogoutRequest createEmptyInstance() => create();
  static $pb.PbList<LogoutRequest> createRepeated() => $pb.PbList<LogoutRequest>();
  @$core.pragma('dart2js:noInline')
  static LogoutRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogoutRequest>(create);
  static LogoutRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accessToken => $_getSZ(0);
  @$pb.TagNumber(1)
  set accessToken($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccessToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccessToken() => clearField(1);
}

class Profile extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Profile', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstName')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastName')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sectionId')
    ..hasRequiredFields = false
  ;

  Profile._() : super();
  factory Profile({
    $core.String? userId,
    $core.String? firstName,
    $core.String? lastName,
    $core.String? sectionId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (firstName != null) {
      _result.firstName = firstName;
    }
    if (lastName != null) {
      _result.lastName = lastName;
    }
    if (sectionId != null) {
      _result.sectionId = sectionId;
    }
    return _result;
  }
  factory Profile.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Profile.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Profile clone() => Profile()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Profile copyWith(void Function(Profile) updates) => super.copyWith((message) => updates(message as Profile)) as Profile; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Profile create() => Profile._();
  Profile createEmptyInstance() => create();
  static $pb.PbList<Profile> createRepeated() => $pb.PbList<Profile>();
  @$core.pragma('dart2js:noInline')
  static Profile getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Profile>(create);
  static Profile? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get firstName => $_getSZ(1);
  @$pb.TagNumber(2)
  set firstName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstName() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get lastName => $_getSZ(2);
  @$pb.TagNumber(3)
  set lastName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastName() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get sectionId => $_getSZ(3);
  @$pb.TagNumber(4)
  set sectionId($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSectionId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSectionId() => clearField(4);
}

class GetSectionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetSectionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sectionId')
    ..hasRequiredFields = false
  ;

  GetSectionRequest._() : super();
  factory GetSectionRequest({
    $core.String? sectionId,
  }) {
    final _result = create();
    if (sectionId != null) {
      _result.sectionId = sectionId;
    }
    return _result;
  }
  factory GetSectionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetSectionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetSectionRequest clone() => GetSectionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetSectionRequest copyWith(void Function(GetSectionRequest) updates) => super.copyWith((message) => updates(message as GetSectionRequest)) as GetSectionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetSectionRequest create() => GetSectionRequest._();
  GetSectionRequest createEmptyInstance() => create();
  static $pb.PbList<GetSectionRequest> createRepeated() => $pb.PbList<GetSectionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetSectionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetSectionRequest>(create);
  static GetSectionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSectionId() => clearField(1);
}

class Section extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Section', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sectionId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'title')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'desc')
    ..hasRequiredFields = false
  ;

  Section._() : super();
  factory Section({
    $core.String? sectionId,
    $core.String? title,
    $core.String? desc,
  }) {
    final _result = create();
    if (sectionId != null) {
      _result.sectionId = sectionId;
    }
    if (title != null) {
      _result.title = title;
    }
    if (desc != null) {
      _result.desc = desc;
    }
    return _result;
  }
  factory Section.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Section.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Section clone() => Section()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Section copyWith(void Function(Section) updates) => super.copyWith((message) => updates(message as Section)) as Section; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Section create() => Section._();
  Section createEmptyInstance() => create();
  static $pb.PbList<Section> createRepeated() => $pb.PbList<Section>();
  @$core.pragma('dart2js:noInline')
  static Section getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Section>(create);
  static Section? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get sectionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sectionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSectionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSectionId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get title => $_getSZ(1);
  @$pb.TagNumber(2)
  set title($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTitle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTitle() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get desc => $_getSZ(2);
  @$pb.TagNumber(3)
  set desc($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesc() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesc() => clearField(3);
}

class GetTicketReqest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTicketReqest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..hasRequiredFields = false
  ;

  GetTicketReqest._() : super();
  factory GetTicketReqest({
    $core.String? userId,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    return _result;
  }
  factory GetTicketReqest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTicketReqest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTicketReqest clone() => GetTicketReqest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTicketReqest copyWith(void Function(GetTicketReqest) updates) => super.copyWith((message) => updates(message as GetTicketReqest)) as GetTicketReqest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTicketReqest create() => GetTicketReqest._();
  GetTicketReqest createEmptyInstance() => create();
  static $pb.PbList<GetTicketReqest> createRepeated() => $pb.PbList<GetTicketReqest>();
  @$core.pragma('dart2js:noInline')
  static GetTicketReqest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTicketReqest>(create);
  static GetTicketReqest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetTicketResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTicketResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ticket')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brokerIp')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'brokerPort')
    ..hasRequiredFields = false
  ;

  GetTicketResponse._() : super();
  factory GetTicketResponse({
    $core.String? ticket,
    $core.String? brokerIp,
    $core.String? brokerPort,
  }) {
    final _result = create();
    if (ticket != null) {
      _result.ticket = ticket;
    }
    if (brokerIp != null) {
      _result.brokerIp = brokerIp;
    }
    if (brokerPort != null) {
      _result.brokerPort = brokerPort;
    }
    return _result;
  }
  factory GetTicketResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTicketResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTicketResponse clone() => GetTicketResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTicketResponse copyWith(void Function(GetTicketResponse) updates) => super.copyWith((message) => updates(message as GetTicketResponse)) as GetTicketResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTicketResponse create() => GetTicketResponse._();
  GetTicketResponse createEmptyInstance() => create();
  static $pb.PbList<GetTicketResponse> createRepeated() => $pb.PbList<GetTicketResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTicketResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTicketResponse>(create);
  static GetTicketResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ticket => $_getSZ(0);
  @$pb.TagNumber(1)
  set ticket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTicket() => $_has(0);
  @$pb.TagNumber(1)
  void clearTicket() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get brokerIp => $_getSZ(1);
  @$pb.TagNumber(2)
  set brokerIp($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBrokerIp() => $_has(1);
  @$pb.TagNumber(2)
  void clearBrokerIp() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get brokerPort => $_getSZ(2);
  @$pb.TagNumber(3)
  set brokerPort($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBrokerPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearBrokerPort() => clearField(3);
}

class GetRoomRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'roomId')
    ..hasRequiredFields = false
  ;

  GetRoomRequest._() : super();
  factory GetRoomRequest({
    $core.String? roomId,
  }) {
    final _result = create();
    if (roomId != null) {
      _result.roomId = roomId;
    }
    return _result;
  }
  factory GetRoomRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomRequest clone() => GetRoomRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomRequest copyWith(void Function(GetRoomRequest) updates) => super.copyWith((message) => updates(message as GetRoomRequest)) as GetRoomRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomRequest create() => GetRoomRequest._();
  GetRoomRequest createEmptyInstance() => create();
  static $pb.PbList<GetRoomRequest> createRepeated() => $pb.PbList<GetRoomRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRoomRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomRequest>(create);
  static GetRoomRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get roomId => $_getSZ(0);
  @$pb.TagNumber(1)
  set roomId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoomId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoomId() => clearField(1);
}

class GetRoomResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRoomResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOM<Room>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'room', subBuilder: Room.create)
    ..hasRequiredFields = false
  ;

  GetRoomResponse._() : super();
  factory GetRoomResponse({
    Room? room,
  }) {
    final _result = create();
    if (room != null) {
      _result.room = room;
    }
    return _result;
  }
  factory GetRoomResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRoomResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRoomResponse clone() => GetRoomResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRoomResponse copyWith(void Function(GetRoomResponse) updates) => super.copyWith((message) => updates(message as GetRoomResponse)) as GetRoomResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRoomResponse create() => GetRoomResponse._();
  GetRoomResponse createEmptyInstance() => create();
  static $pb.PbList<GetRoomResponse> createRepeated() => $pb.PbList<GetRoomResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRoomResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRoomResponse>(create);
  static GetRoomResponse? _defaultInstance;

  @$pb.TagNumber(1)
  Room get room => $_getN(0);
  @$pb.TagNumber(1)
  set room(Room v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoom() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoom() => clearField(1);
  @$pb.TagNumber(1)
  Room ensureRoom() => $_ensure(0);
}

class Room extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Room', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..pc<Device>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'devices', $pb.PbFieldType.PM, subBuilder: Device.create)
    ..hasRequiredFields = false
  ;

  Room._() : super();
  factory Room({
    $core.Iterable<Device>? devices,
  }) {
    final _result = create();
    if (devices != null) {
      _result.devices.addAll(devices);
    }
    return _result;
  }
  factory Room.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Room.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Room clone() => Room()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Room copyWith(void Function(Room) updates) => super.copyWith((message) => updates(message as Room)) as Room; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Room create() => Room._();
  Room createEmptyInstance() => create();
  static $pb.PbList<Room> createRepeated() => $pb.PbList<Room>();
  @$core.pragma('dart2js:noInline')
  static Room getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Room>(create);
  static Room? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Device> get devices => $_getList(0);
}

class Device extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Device', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transType')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'serial')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'access')
    ..hasRequiredFields = false
  ;

  Device._() : super();
  factory Device({
    $core.String? deviceId,
    $core.Iterable<$core.String>? transType,
    $core.String? serial,
    $core.bool? access,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (transType != null) {
      _result.transType.addAll(transType);
    }
    if (serial != null) {
      _result.serial = serial;
    }
    if (access != null) {
      _result.access = access;
    }
    return _result;
  }
  factory Device.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Device.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Device clone() => Device()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Device copyWith(void Function(Device) updates) => super.copyWith((message) => updates(message as Device)) as Device; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Device create() => Device._();
  Device createEmptyInstance() => create();
  static $pb.PbList<Device> createRepeated() => $pb.PbList<Device>();
  @$core.pragma('dart2js:noInline')
  static Device getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Device>(create);
  static Device? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get transType => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get serial => $_getSZ(2);
  @$pb.TagNumber(3)
  set serial($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSerial() => $_has(2);
  @$pb.TagNumber(3)
  void clearSerial() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get access => $_getBF(3);
  @$pb.TagNumber(4)
  set access($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAccess() => $_has(3);
  @$pb.TagNumber(4)
  void clearAccess() => clearField(4);
}

class GetTrackerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTrackerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime')
    ..hasRequiredFields = false
  ;

  GetTrackerRequest._() : super();
  factory GetTrackerRequest({
    $core.String? deviceId,
    $core.String? startTime,
    $core.String? endTime,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    return _result;
  }
  factory GetTrackerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTrackerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTrackerRequest clone() => GetTrackerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTrackerRequest copyWith(void Function(GetTrackerRequest) updates) => super.copyWith((message) => updates(message as GetTrackerRequest)) as GetTrackerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTrackerRequest create() => GetTrackerRequest._();
  GetTrackerRequest createEmptyInstance() => create();
  static $pb.PbList<GetTrackerRequest> createRepeated() => $pb.PbList<GetTrackerRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTrackerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTrackerRequest>(create);
  static GetTrackerRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get startTime => $_getSZ(1);
  @$pb.TagNumber(2)
  set startTime($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStartTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get endTime => $_getSZ(2);
  @$pb.TagNumber(3)
  set endTime($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndTime() => clearField(3);
}

class GetTrackerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTrackerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..pc<Location>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'location', $pb.PbFieldType.PM, subBuilder: Location.create)
    ..hasRequiredFields = false
  ;

  GetTrackerResponse._() : super();
  factory GetTrackerResponse({
    $core.Iterable<Location>? location,
  }) {
    final _result = create();
    if (location != null) {
      _result.location.addAll(location);
    }
    return _result;
  }
  factory GetTrackerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTrackerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTrackerResponse clone() => GetTrackerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTrackerResponse copyWith(void Function(GetTrackerResponse) updates) => super.copyWith((message) => updates(message as GetTrackerResponse)) as GetTrackerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTrackerResponse create() => GetTrackerResponse._();
  GetTrackerResponse createEmptyInstance() => create();
  static $pb.PbList<GetTrackerResponse> createRepeated() => $pb.PbList<GetTrackerResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTrackerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTrackerResponse>(create);
  static GetTrackerResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Location> get location => $_getList(0);
}

class Relation extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Relation', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'userId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceSerial')
    ..hasRequiredFields = false
  ;

  Relation._() : super();
  factory Relation({
    $core.String? userId,
    $core.String? deviceId,
    $core.String? deviceSerial,
  }) {
    final _result = create();
    if (userId != null) {
      _result.userId = userId;
    }
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (deviceSerial != null) {
      _result.deviceSerial = deviceSerial;
    }
    return _result;
  }
  factory Relation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Relation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Relation clone() => Relation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Relation copyWith(void Function(Relation) updates) => super.copyWith((message) => updates(message as Relation)) as Relation; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Relation create() => Relation._();
  Relation createEmptyInstance() => create();
  static $pb.PbList<Relation> createRepeated() => $pb.PbList<Relation>();
  @$core.pragma('dart2js:noInline')
  static Relation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Relation>(create);
  static Relation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceId => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceId() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get deviceSerial => $_getSZ(2);
  @$pb.TagNumber(3)
  set deviceSerial($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDeviceSerial() => $_has(2);
  @$pb.TagNumber(3)
  void clearDeviceSerial() => clearField(3);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lat', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lng', $pb.PbFieldType.OD)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..hasRequiredFields = false
  ;

  Location._() : super();
  factory Location({
    $core.double? lat,
    $core.double? lng,
    $core.String? timestamp,
  }) {
    final _result = create();
    if (lat != null) {
      _result.lat = lat;
    }
    if (lng != null) {
      _result.lng = lng;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
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

  @$pb.TagNumber(3)
  $core.String get timestamp => $_getSZ(2);
  @$pb.TagNumber(3)
  set timestamp($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
}

class GetUserRelationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetUserRelationResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..pc<TrackerDevice>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'devices', $pb.PbFieldType.PM, subBuilder: TrackerDevice.create)
    ..hasRequiredFields = false
  ;

  GetUserRelationResponse._() : super();
  factory GetUserRelationResponse({
    $core.Iterable<TrackerDevice>? devices,
  }) {
    final _result = create();
    if (devices != null) {
      _result.devices.addAll(devices);
    }
    return _result;
  }
  factory GetUserRelationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUserRelationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUserRelationResponse clone() => GetUserRelationResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUserRelationResponse copyWith(void Function(GetUserRelationResponse) updates) => super.copyWith((message) => updates(message as GetUserRelationResponse)) as GetUserRelationResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetUserRelationResponse create() => GetUserRelationResponse._();
  GetUserRelationResponse createEmptyInstance() => create();
  static $pb.PbList<GetUserRelationResponse> createRepeated() => $pb.PbList<GetUserRelationResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUserRelationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUserRelationResponse>(create);
  static GetUserRelationResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TrackerDevice> get devices => $_getList(0);
}

class TrackerDevice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TrackerDevice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceId')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deviceSerial')
    ..hasRequiredFields = false
  ;

  TrackerDevice._() : super();
  factory TrackerDevice({
    $core.String? deviceId,
    $core.String? deviceSerial,
  }) {
    final _result = create();
    if (deviceId != null) {
      _result.deviceId = deviceId;
    }
    if (deviceSerial != null) {
      _result.deviceSerial = deviceSerial;
    }
    return _result;
  }
  factory TrackerDevice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackerDevice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackerDevice clone() => TrackerDevice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackerDevice copyWith(void Function(TrackerDevice) updates) => super.copyWith((message) => updates(message as TrackerDevice)) as TrackerDevice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrackerDevice create() => TrackerDevice._();
  TrackerDevice createEmptyInstance() => create();
  static $pb.PbList<TrackerDevice> createRepeated() => $pb.PbList<TrackerDevice>();
  @$core.pragma('dart2js:noInline')
  static TrackerDevice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackerDevice>(create);
  static TrackerDevice? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get deviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set deviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get deviceSerial => $_getSZ(1);
  @$pb.TagNumber(2)
  set deviceSerial($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeviceSerial() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeviceSerial() => clearField(2);
}

class Number extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Number', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownerId')
    ..hasRequiredFields = false
  ;

  Number._() : super();
  factory Number({
    $core.String? number,
    $core.String? ownerId,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    if (ownerId != null) {
      _result.ownerId = ownerId;
    }
    return _result;
  }
  factory Number.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Number.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Number clone() => Number()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Number copyWith(void Function(Number) updates) => super.copyWith((message) => updates(message as Number)) as Number; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Number create() => Number._();
  Number createEmptyInstance() => create();
  static $pb.PbList<Number> createRepeated() => $pb.PbList<Number>();
  @$core.pragma('dart2js:noInline')
  static Number getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Number>(create);
  static Number? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get number => $_getSZ(0);
  @$pb.TagNumber(1)
  set number($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get ownerId => $_getSZ(1);
  @$pb.TagNumber(2)
  set ownerId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOwnerId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOwnerId() => clearField(2);
}

class Numbers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Numbers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..pc<Number>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numbers', $pb.PbFieldType.PM, subBuilder: Number.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'total', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Numbers._() : super();
  factory Numbers({
    $core.Iterable<Number>? numbers,
    $core.int? total,
  }) {
    final _result = create();
    if (numbers != null) {
      _result.numbers.addAll(numbers);
    }
    if (total != null) {
      _result.total = total;
    }
    return _result;
  }
  factory Numbers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Numbers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Numbers clone() => Numbers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Numbers copyWith(void Function(Numbers) updates) => super.copyWith((message) => updates(message as Numbers)) as Numbers; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Numbers create() => Numbers._();
  Numbers createEmptyInstance() => create();
  static $pb.PbList<Numbers> createRepeated() => $pb.PbList<Numbers>();
  @$core.pragma('dart2js:noInline')
  static Numbers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Numbers>(create);
  static Numbers? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Number> get numbers => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get total => $_getIZ(1);
  @$pb.TagNumber(2)
  set total($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => clearField(2);
}

enum WhitelistRequest_Rule {
  number, 
  range, 
  level, 
  notSet
}

class WhitelistRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, WhitelistRequest_Rule> _WhitelistRequest_RuleByTag = {
    3 : WhitelistRequest_Rule.number,
    4 : WhitelistRequest_Rule.range,
    5 : WhitelistRequest_Rule.level,
    0 : WhitelistRequest_Rule.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WhitelistRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5])
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number')
    ..aOM<Range>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'range', subBuilder: Range.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  WhitelistRequest._() : super();
  factory WhitelistRequest({
    $core.String? phone,
    $core.String? number,
    Range? range,
    $core.int? level,
  }) {
    final _result = create();
    if (phone != null) {
      _result.phone = phone;
    }
    if (number != null) {
      _result.number = number;
    }
    if (range != null) {
      _result.range = range;
    }
    if (level != null) {
      _result.level = level;
    }
    return _result;
  }
  factory WhitelistRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WhitelistRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WhitelistRequest clone() => WhitelistRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WhitelistRequest copyWith(void Function(WhitelistRequest) updates) => super.copyWith((message) => updates(message as WhitelistRequest)) as WhitelistRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WhitelistRequest create() => WhitelistRequest._();
  WhitelistRequest createEmptyInstance() => create();
  static $pb.PbList<WhitelistRequest> createRepeated() => $pb.PbList<WhitelistRequest>();
  @$core.pragma('dart2js:noInline')
  static WhitelistRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WhitelistRequest>(create);
  static WhitelistRequest? _defaultInstance;

  WhitelistRequest_Rule whichRule() => _WhitelistRequest_RuleByTag[$_whichOneof(0)]!;
  void clearRule() => clearField($_whichOneof(0));

  @$pb.TagNumber(2)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get number => $_getSZ(1);
  @$pb.TagNumber(3)
  set number($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);

  @$pb.TagNumber(4)
  Range get range => $_getN(2);
  @$pb.TagNumber(4)
  set range(Range v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRange() => $_has(2);
  @$pb.TagNumber(4)
  void clearRange() => clearField(4);
  @$pb.TagNumber(4)
  Range ensureRange() => $_ensure(2);

  @$pb.TagNumber(5)
  $core.int get level => $_getIZ(3);
  @$pb.TagNumber(5)
  set level($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(3);
  @$pb.TagNumber(5)
  void clearLevel() => clearField(5);
}

class Range extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Range', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Range._() : super();
  factory Range({
    $core.int? from,
    $core.int? to,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    return _result;
  }
  factory Range.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Range.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Range clone() => Range()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Range copyWith(void Function(Range) updates) => super.copyWith((message) => updates(message as Range)) as Range; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Range create() => Range._();
  Range createEmptyInstance() => create();
  static $pb.PbList<Range> createRepeated() => $pb.PbList<Range>();
  @$core.pragma('dart2js:noInline')
  static Range getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Range>(create);
  static Range? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get from => $_getIZ(0);
  @$pb.TagNumber(1)
  set from($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get to => $_getIZ(1);
  @$pb.TagNumber(2)
  set to($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);
}

class AddWhiteListNumberRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddWhiteListNumberRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownNumber')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peerNumber')
    ..hasRequiredFields = false
  ;

  AddWhiteListNumberRequest._() : super();
  factory AddWhiteListNumberRequest({
    $core.String? ownNumber,
    $core.String? peerNumber,
  }) {
    final _result = create();
    if (ownNumber != null) {
      _result.ownNumber = ownNumber;
    }
    if (peerNumber != null) {
      _result.peerNumber = peerNumber;
    }
    return _result;
  }
  factory AddWhiteListNumberRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddWhiteListNumberRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddWhiteListNumberRequest clone() => AddWhiteListNumberRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddWhiteListNumberRequest copyWith(void Function(AddWhiteListNumberRequest) updates) => super.copyWith((message) => updates(message as AddWhiteListNumberRequest)) as AddWhiteListNumberRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddWhiteListNumberRequest create() => AddWhiteListNumberRequest._();
  AddWhiteListNumberRequest createEmptyInstance() => create();
  static $pb.PbList<AddWhiteListNumberRequest> createRepeated() => $pb.PbList<AddWhiteListNumberRequest>();
  @$core.pragma('dart2js:noInline')
  static AddWhiteListNumberRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddWhiteListNumberRequest>(create);
  static AddWhiteListNumberRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get peerNumber => $_getSZ(1);
  @$pb.TagNumber(2)
  set peerNumber($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPeerNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearPeerNumber() => clearField(2);
}

class AddWhiteListRangeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddWhiteListRangeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownNumber')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddWhiteListRangeRequest._() : super();
  factory AddWhiteListRangeRequest({
    $core.String? ownNumber,
    $core.int? from,
    $core.int? to,
  }) {
    final _result = create();
    if (ownNumber != null) {
      _result.ownNumber = ownNumber;
    }
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    return _result;
  }
  factory AddWhiteListRangeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddWhiteListRangeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddWhiteListRangeRequest clone() => AddWhiteListRangeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddWhiteListRangeRequest copyWith(void Function(AddWhiteListRangeRequest) updates) => super.copyWith((message) => updates(message as AddWhiteListRangeRequest)) as AddWhiteListRangeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddWhiteListRangeRequest create() => AddWhiteListRangeRequest._();
  AddWhiteListRangeRequest createEmptyInstance() => create();
  static $pb.PbList<AddWhiteListRangeRequest> createRepeated() => $pb.PbList<AddWhiteListRangeRequest>();
  @$core.pragma('dart2js:noInline')
  static AddWhiteListRangeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddWhiteListRangeRequest>(create);
  static AddWhiteListRangeRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get from => $_getIZ(1);
  @$pb.TagNumber(2)
  set from($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearFrom() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get to => $_getIZ(2);
  @$pb.TagNumber(3)
  set to($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearTo() => clearField(3);
}

class AddWhiteListLevelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddWhiteListLevelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ownNumber')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  AddWhiteListLevelRequest._() : super();
  factory AddWhiteListLevelRequest({
    $core.String? ownNumber,
    $core.int? level,
  }) {
    final _result = create();
    if (ownNumber != null) {
      _result.ownNumber = ownNumber;
    }
    if (level != null) {
      _result.level = level;
    }
    return _result;
  }
  factory AddWhiteListLevelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddWhiteListLevelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddWhiteListLevelRequest clone() => AddWhiteListLevelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddWhiteListLevelRequest copyWith(void Function(AddWhiteListLevelRequest) updates) => super.copyWith((message) => updates(message as AddWhiteListLevelRequest)) as AddWhiteListLevelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddWhiteListLevelRequest create() => AddWhiteListLevelRequest._();
  AddWhiteListLevelRequest createEmptyInstance() => create();
  static $pb.PbList<AddWhiteListLevelRequest> createRepeated() => $pb.PbList<AddWhiteListLevelRequest>();
  @$core.pragma('dart2js:noInline')
  static AddWhiteListLevelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddWhiteListLevelRequest>(create);
  static AddWhiteListLevelRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ownNumber => $_getSZ(0);
  @$pb.TagNumber(1)
  set ownNumber($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasOwnNumber() => $_has(0);
  @$pb.TagNumber(1)
  void clearOwnNumber() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get level => $_getIZ(1);
  @$pb.TagNumber(2)
  set level($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevel() => clearField(2);
}

enum Whitelist_Rule {
  number, 
  range, 
  level, 
  notSet
}

class Whitelist extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, Whitelist_Rule> _Whitelist_RuleByTag = {
    3 : Whitelist_Rule.number,
    4 : Whitelist_Rule.range,
    5 : Whitelist_Rule.level,
    0 : Whitelist_Rule.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Whitelist', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..oo(0, [3, 4, 5])
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'number')
    ..aOM<Range>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'range', subBuilder: Range.create)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'level', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Whitelist._() : super();
  factory Whitelist({
    $core.String? number,
    Range? range,
    $core.int? level,
  }) {
    final _result = create();
    if (number != null) {
      _result.number = number;
    }
    if (range != null) {
      _result.range = range;
    }
    if (level != null) {
      _result.level = level;
    }
    return _result;
  }
  factory Whitelist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Whitelist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Whitelist clone() => Whitelist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Whitelist copyWith(void Function(Whitelist) updates) => super.copyWith((message) => updates(message as Whitelist)) as Whitelist; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Whitelist create() => Whitelist._();
  Whitelist createEmptyInstance() => create();
  static $pb.PbList<Whitelist> createRepeated() => $pb.PbList<Whitelist>();
  @$core.pragma('dart2js:noInline')
  static Whitelist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Whitelist>(create);
  static Whitelist? _defaultInstance;

  Whitelist_Rule whichRule() => _Whitelist_RuleByTag[$_whichOneof(0)]!;
  void clearRule() => clearField($_whichOneof(0));

  @$pb.TagNumber(3)
  $core.String get number => $_getSZ(0);
  @$pb.TagNumber(3)
  set number($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumber() => $_has(0);
  @$pb.TagNumber(3)
  void clearNumber() => clearField(3);

  @$pb.TagNumber(4)
  Range get range => $_getN(1);
  @$pb.TagNumber(4)
  set range(Range v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRange() => $_has(1);
  @$pb.TagNumber(4)
  void clearRange() => clearField(4);
  @$pb.TagNumber(4)
  Range ensureRange() => $_ensure(1);

  @$pb.TagNumber(5)
  $core.int get level => $_getIZ(2);
  @$pb.TagNumber(5)
  set level($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasLevel() => $_has(2);
  @$pb.TagNumber(5)
  void clearLevel() => clearField(5);
}

class Whitelists extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Whitelists', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..pc<Whitelist>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'whitelist', $pb.PbFieldType.PM, subBuilder: Whitelist.create)
    ..hasRequiredFields = false
  ;

  Whitelists._() : super();
  factory Whitelists({
    $core.Iterable<Whitelist>? whitelist,
  }) {
    final _result = create();
    if (whitelist != null) {
      _result.whitelist.addAll(whitelist);
    }
    return _result;
  }
  factory Whitelists.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Whitelists.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Whitelists clone() => Whitelists()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Whitelists copyWith(void Function(Whitelists) updates) => super.copyWith((message) => updates(message as Whitelists)) as Whitelists; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Whitelists create() => Whitelists._();
  Whitelists createEmptyInstance() => create();
  static $pb.PbList<Whitelists> createRepeated() => $pb.PbList<Whitelists>();
  @$core.pragma('dart2js:noInline')
  static Whitelists getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Whitelists>(create);
  static Whitelists? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Whitelist> get whitelist => $_getList(0);
}

class GetWhitelist extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetWhitelist', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'user_gw'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'phone')
    ..hasRequiredFields = false
  ;

  GetWhitelist._() : super();
  factory GetWhitelist({
    $core.String? phone,
  }) {
    final _result = create();
    if (phone != null) {
      _result.phone = phone;
    }
    return _result;
  }
  factory GetWhitelist.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetWhitelist.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetWhitelist clone() => GetWhitelist()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetWhitelist copyWith(void Function(GetWhitelist) updates) => super.copyWith((message) => updates(message as GetWhitelist)) as GetWhitelist; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetWhitelist create() => GetWhitelist._();
  GetWhitelist createEmptyInstance() => create();
  static $pb.PbList<GetWhitelist> createRepeated() => $pb.PbList<GetWhitelist>();
  @$core.pragma('dart2js:noInline')
  static GetWhitelist getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetWhitelist>(create);
  static GetWhitelist? _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get phone => $_getSZ(0);
  @$pb.TagNumber(2)
  set phone($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasPhone() => $_has(0);
  @$pb.TagNumber(2)
  void clearPhone() => clearField(2);
}

