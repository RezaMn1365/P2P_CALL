///
//  Generated code. Do not modify.
//  source: socket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VerificationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerificationRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'panel_tcp_socket'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ticket')
    ..hasRequiredFields = false
  ;

  VerificationRequest._() : super();
  factory VerificationRequest({
    $core.String? ticket,
  }) {
    final _result = create();
    if (ticket != null) {
      _result.ticket = ticket;
    }
    return _result;
  }
  factory VerificationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerificationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerificationRequest clone() => VerificationRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerificationRequest copyWith(void Function(VerificationRequest) updates) => super.copyWith((message) => updates(message as VerificationRequest)) as VerificationRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerificationRequest create() => VerificationRequest._();
  VerificationRequest createEmptyInstance() => create();
  static $pb.PbList<VerificationRequest> createRepeated() => $pb.PbList<VerificationRequest>();
  @$core.pragma('dart2js:noInline')
  static VerificationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerificationRequest>(create);
  static VerificationRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ticket => $_getSZ(0);
  @$pb.TagNumber(1)
  set ticket($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTicket() => $_has(0);
  @$pb.TagNumber(1)
  void clearTicket() => clearField(1);
}

class Empty extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Empty', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'panel_tcp_socket'), createEmptyInstance: create)
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

