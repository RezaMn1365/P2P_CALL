///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use defaultResponseDescriptor instead')
const DefaultResponse$json = const {
  '1': 'DefaultResponse',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DefaultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List defaultResponseDescriptor = $convert.base64Decode('Cg9EZWZhdWx0UmVzcG9uc2USGAoHbWVzc2FnZRgBIAEoCVIHbWVzc2FnZQ==');
@$core.Deprecated('Use userSigninRequestDescriptor instead')
const UserSigninRequest$json = const {
  '1': 'UserSigninRequest',
  '2': const [
    const {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'ip', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'ip', '17': true},
    const {'1': 'agent', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'agent', '17': true},
    const {'1': 'details', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'details', '17': true},
  ],
  '8': const [
    const {'1': '_ip'},
    const {'1': '_agent'},
    const {'1': '_details'},
  ],
};

/// Descriptor for `UserSigninRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSigninRequestDescriptor = $convert.base64Decode('ChFVc2VyU2lnbmluUmVxdWVzdBIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSGgoIcGFzc3dvcmQYAiABKAlSCHBhc3N3b3JkEhMKAmlwGAMgASgJSABSAmlwiAEBEhkKBWFnZW50GAQgASgJSAFSBWFnZW50iAEBEh0KB2RldGFpbHMYBSABKAlIAlIHZGV0YWlsc4gBAUIFCgNfaXBCCAoGX2FnZW50QgoKCF9kZXRhaWxz');
@$core.Deprecated('Use userSinginResponseDescriptor instead')
const UserSinginResponse$json = const {
  '1': 'UserSinginResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'exp', '3': 3, '4': 1, '5': 13, '10': 'exp'},
  ],
};

/// Descriptor for `UserSinginResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSinginResponseDescriptor = $convert.base64Decode('ChJVc2VyU2luZ2luUmVzcG9uc2USIQoMYWNjZXNzX3Rva2VuGAEgASgJUgthY2Nlc3NUb2tlbhIjCg1yZWZyZXNoX3Rva2VuGAIgASgJUgxyZWZyZXNoVG9rZW4SEAoDZXhwGAMgASgNUgNleHA=');
@$core.Deprecated('Use renewTokenRequestDescriptor instead')
const RenewTokenRequest$json = const {
  '1': 'RenewTokenRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'ip', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'ip', '17': true},
    const {'1': 'agent', '3': 4, '4': 1, '5': 9, '9': 1, '10': 'agent', '17': true},
    const {'1': 'details', '3': 5, '4': 1, '5': 9, '9': 2, '10': 'details', '17': true},
  ],
  '8': const [
    const {'1': '_ip'},
    const {'1': '_agent'},
    const {'1': '_details'},
  ],
};

/// Descriptor for `RenewTokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewTokenRequestDescriptor = $convert.base64Decode('ChFSZW5ld1Rva2VuUmVxdWVzdBIhCgxhY2Nlc3NfdG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEiMKDXJlZnJlc2hfdG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbhITCgJpcBgDIAEoCUgAUgJpcIgBARIZCgVhZ2VudBgEIAEoCUgBUgVhZ2VudIgBARIdCgdkZXRhaWxzGAUgASgJSAJSB2RldGFpbHOIAQFCBQoDX2lwQggKBl9hZ2VudEIKCghfZGV0YWlscw==');
@$core.Deprecated('Use renewTokenResonseDescriptor instead')
const RenewTokenResonse$json = const {
  '1': 'RenewTokenResonse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 2, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

/// Descriptor for `RenewTokenResonse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renewTokenResonseDescriptor = $convert.base64Decode('ChFSZW5ld1Rva2VuUmVzb25zZRIhCgxhY2Nlc3NfdG9rZW4YASABKAlSC2FjY2Vzc1Rva2VuEiMKDXJlZnJlc2hfdG9rZW4YAiABKAlSDHJlZnJlc2hUb2tlbg==');
@$core.Deprecated('Use logoutRequestDescriptor instead')
const LogoutRequest$json = const {
  '1': 'LogoutRequest',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
  ],
};

/// Descriptor for `LogoutRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List logoutRequestDescriptor = $convert.base64Decode('Cg1Mb2dvdXRSZXF1ZXN0EiEKDGFjY2Vzc190b2tlbhgBIAEoCVILYWNjZXNzVG9rZW4=');
@$core.Deprecated('Use profileDescriptor instead')
const Profile$json = const {
  '1': 'Profile',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'first_name', '3': 2, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'last_name', '3': 3, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'section_id', '3': 4, '4': 1, '5': 9, '10': 'sectionId'},
  ],
};

/// Descriptor for `Profile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List profileDescriptor = $convert.base64Decode('CgdQcm9maWxlEhcKB3VzZXJfaWQYASABKAlSBnVzZXJJZBIdCgpmaXJzdF9uYW1lGAIgASgJUglmaXJzdE5hbWUSGwoJbGFzdF9uYW1lGAMgASgJUghsYXN0TmFtZRIdCgpzZWN0aW9uX2lkGAQgASgJUglzZWN0aW9uSWQ=');
@$core.Deprecated('Use getSectionRequestDescriptor instead')
const GetSectionRequest$json = const {
  '1': 'GetSectionRequest',
  '2': const [
    const {'1': 'section_id', '3': 1, '4': 1, '5': 9, '10': 'sectionId'},
  ],
};

/// Descriptor for `GetSectionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getSectionRequestDescriptor = $convert.base64Decode('ChFHZXRTZWN0aW9uUmVxdWVzdBIdCgpzZWN0aW9uX2lkGAEgASgJUglzZWN0aW9uSWQ=');
@$core.Deprecated('Use sectionDescriptor instead')
const Section$json = const {
  '1': 'Section',
  '2': const [
    const {'1': 'section_id', '3': 1, '4': 1, '5': 9, '10': 'sectionId'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'desc', '3': 3, '4': 1, '5': 9, '10': 'desc'},
  ],
};

/// Descriptor for `Section`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sectionDescriptor = $convert.base64Decode('CgdTZWN0aW9uEh0KCnNlY3Rpb25faWQYASABKAlSCXNlY3Rpb25JZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSEgoEZGVzYxgDIAEoCVIEZGVzYw==');
@$core.Deprecated('Use getTicketReqestDescriptor instead')
const GetTicketReqest$json = const {
  '1': 'GetTicketReqest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetTicketReqest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTicketReqestDescriptor = $convert.base64Decode('Cg9HZXRUaWNrZXRSZXFlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');
@$core.Deprecated('Use getTicketResponseDescriptor instead')
const GetTicketResponse$json = const {
  '1': 'GetTicketResponse',
  '2': const [
    const {'1': 'ticket', '3': 1, '4': 1, '5': 9, '10': 'ticket'},
    const {'1': 'broker_ip', '3': 2, '4': 1, '5': 9, '10': 'brokerIp'},
    const {'1': 'broker_port', '3': 3, '4': 1, '5': 9, '10': 'brokerPort'},
  ],
};

/// Descriptor for `GetTicketResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTicketResponseDescriptor = $convert.base64Decode('ChFHZXRUaWNrZXRSZXNwb25zZRIWCgZ0aWNrZXQYASABKAlSBnRpY2tldBIbCglicm9rZXJfaXAYAiABKAlSCGJyb2tlcklwEh8KC2Jyb2tlcl9wb3J0GAMgASgJUgpicm9rZXJQb3J0');
@$core.Deprecated('Use getRoomRequestDescriptor instead')
const GetRoomRequest$json = const {
  '1': 'GetRoomRequest',
  '2': const [
    const {'1': 'room_id', '3': 1, '4': 1, '5': 9, '10': 'roomId'},
  ],
};

/// Descriptor for `GetRoomRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomRequestDescriptor = $convert.base64Decode('Cg5HZXRSb29tUmVxdWVzdBIXCgdyb29tX2lkGAEgASgJUgZyb29tSWQ=');
@$core.Deprecated('Use getRoomResponseDescriptor instead')
const GetRoomResponse$json = const {
  '1': 'GetRoomResponse',
  '2': const [
    const {'1': 'room', '3': 1, '4': 1, '5': 11, '6': '.user_gw.Room', '10': 'room'},
  ],
};

/// Descriptor for `GetRoomResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRoomResponseDescriptor = $convert.base64Decode('Cg9HZXRSb29tUmVzcG9uc2USIQoEcm9vbRgBIAEoCzINLnVzZXJfZ3cuUm9vbVIEcm9vbQ==');
@$core.Deprecated('Use roomDescriptor instead')
const Room$json = const {
  '1': 'Room',
  '2': const [
    const {'1': 'devices', '3': 1, '4': 3, '5': 11, '6': '.user_gw.Device', '10': 'devices'},
  ],
};

/// Descriptor for `Room`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roomDescriptor = $convert.base64Decode('CgRSb29tEikKB2RldmljZXMYASADKAsyDy51c2VyX2d3LkRldmljZVIHZGV2aWNlcw==');
@$core.Deprecated('Use deviceDescriptor instead')
const Device$json = const {
  '1': 'Device',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'trans_type', '3': 2, '4': 3, '5': 9, '10': 'transType'},
    const {'1': 'serial', '3': 3, '4': 1, '5': 9, '10': 'serial'},
    const {'1': 'access', '3': 4, '4': 1, '5': 8, '10': 'access'},
  ],
};

/// Descriptor for `Device`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deviceDescriptor = $convert.base64Decode('CgZEZXZpY2USGwoJZGV2aWNlX2lkGAEgASgJUghkZXZpY2VJZBIdCgp0cmFuc190eXBlGAIgAygJUgl0cmFuc1R5cGUSFgoGc2VyaWFsGAMgASgJUgZzZXJpYWwSFgoGYWNjZXNzGAQgASgIUgZhY2Nlc3M=');
@$core.Deprecated('Use getTrackerRequestDescriptor instead')
const GetTrackerRequest$json = const {
  '1': 'GetTrackerRequest',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'start_time', '3': 2, '4': 1, '5': 9, '10': 'startTime'},
    const {'1': 'end_time', '3': 3, '4': 1, '5': 9, '10': 'endTime'},
  ],
};

/// Descriptor for `GetTrackerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTrackerRequestDescriptor = $convert.base64Decode('ChFHZXRUcmFja2VyUmVxdWVzdBIbCglkZXZpY2VfaWQYASABKAlSCGRldmljZUlkEh0KCnN0YXJ0X3RpbWUYAiABKAlSCXN0YXJ0VGltZRIZCghlbmRfdGltZRgDIAEoCVIHZW5kVGltZQ==');
@$core.Deprecated('Use getTrackerResponseDescriptor instead')
const GetTrackerResponse$json = const {
  '1': 'GetTrackerResponse',
  '2': const [
    const {'1': 'location', '3': 1, '4': 3, '5': 11, '6': '.user_gw.Location', '10': 'location'},
  ],
};

/// Descriptor for `GetTrackerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTrackerResponseDescriptor = $convert.base64Decode('ChJHZXRUcmFja2VyUmVzcG9uc2USLQoIbG9jYXRpb24YASADKAsyES51c2VyX2d3LkxvY2F0aW9uUghsb2NhdGlvbg==');
@$core.Deprecated('Use relationDescriptor instead')
const Relation$json = const {
  '1': 'Relation',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'device_id', '3': 2, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'device_serial', '3': 3, '4': 1, '5': 9, '10': 'deviceSerial'},
  ],
};

/// Descriptor for `Relation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List relationDescriptor = $convert.base64Decode('CghSZWxhdGlvbhIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQSGwoJZGV2aWNlX2lkGAIgASgJUghkZXZpY2VJZBIjCg1kZXZpY2Vfc2VyaWFsGAMgASgJUgxkZXZpY2VTZXJpYWw=');
@$core.Deprecated('Use locationDescriptor instead')
const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'lng', '3': 2, '4': 1, '5': 1, '10': 'lng'},
    const {'1': 'timestamp', '3': 3, '4': 1, '5': 9, '10': 'timestamp'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode('CghMb2NhdGlvbhIQCgNsYXQYASABKAFSA2xhdBIQCgNsbmcYAiABKAFSA2xuZxIcCgl0aW1lc3RhbXAYAyABKAlSCXRpbWVzdGFtcA==');
@$core.Deprecated('Use getUserRelationResponseDescriptor instead')
const GetUserRelationResponse$json = const {
  '1': 'GetUserRelationResponse',
  '2': const [
    const {'1': 'devices', '3': 1, '4': 3, '5': 11, '6': '.user_gw.TrackerDevice', '10': 'devices'},
  ],
};

/// Descriptor for `GetUserRelationResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRelationResponseDescriptor = $convert.base64Decode('ChdHZXRVc2VyUmVsYXRpb25SZXNwb25zZRIwCgdkZXZpY2VzGAEgAygLMhYudXNlcl9ndy5UcmFja2VyRGV2aWNlUgdkZXZpY2Vz');
@$core.Deprecated('Use trackerDeviceDescriptor instead')
const TrackerDevice$json = const {
  '1': 'TrackerDevice',
  '2': const [
    const {'1': 'device_id', '3': 1, '4': 1, '5': 9, '10': 'deviceId'},
    const {'1': 'device_serial', '3': 2, '4': 1, '5': 9, '10': 'deviceSerial'},
  ],
};

/// Descriptor for `TrackerDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackerDeviceDescriptor = $convert.base64Decode('Cg1UcmFja2VyRGV2aWNlEhsKCWRldmljZV9pZBgBIAEoCVIIZGV2aWNlSWQSIwoNZGV2aWNlX3NlcmlhbBgCIAEoCVIMZGV2aWNlU2VyaWFs');
@$core.Deprecated('Use numberDescriptor instead')
const Number$json = const {
  '1': 'Number',
  '2': const [
    const {'1': 'number', '3': 1, '4': 1, '5': 9, '10': 'number'},
    const {'1': 'owner_id', '3': 2, '4': 1, '5': 9, '10': 'ownerId'},
  ],
};

/// Descriptor for `Number`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberDescriptor = $convert.base64Decode('CgZOdW1iZXISFgoGbnVtYmVyGAEgASgJUgZudW1iZXISGQoIb3duZXJfaWQYAiABKAlSB293bmVySWQ=');
@$core.Deprecated('Use numbersDescriptor instead')
const Numbers$json = const {
  '1': 'Numbers',
  '2': const [
    const {'1': 'numbers', '3': 1, '4': 3, '5': 11, '6': '.user_gw.Number', '10': 'numbers'},
    const {'1': 'total', '3': 2, '4': 1, '5': 5, '9': 0, '10': 'total', '17': true},
  ],
  '8': const [
    const {'1': '_total'},
  ],
};

/// Descriptor for `Numbers`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numbersDescriptor = $convert.base64Decode('CgdOdW1iZXJzEikKB251bWJlcnMYASADKAsyDy51c2VyX2d3Lk51bWJlclIHbnVtYmVycxIZCgV0b3RhbBgCIAEoBUgAUgV0b3RhbIgBAUIICgZfdG90YWw=');
@$core.Deprecated('Use whitelistRequestDescriptor instead')
const WhitelistRequest$json = const {
  '1': 'WhitelistRequest',
  '2': const [
    const {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
    const {'1': 'number', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'number'},
    const {'1': 'range', '3': 4, '4': 1, '5': 11, '6': '.user_gw.Range', '9': 0, '10': 'range'},
    const {'1': 'level', '3': 5, '4': 1, '5': 5, '9': 0, '10': 'level'},
  ],
  '8': const [
    const {'1': 'rule'},
  ],
};

/// Descriptor for `WhitelistRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whitelistRequestDescriptor = $convert.base64Decode('ChBXaGl0ZWxpc3RSZXF1ZXN0EhQKBXBob25lGAIgASgJUgVwaG9uZRIYCgZudW1iZXIYAyABKAlIAFIGbnVtYmVyEiYKBXJhbmdlGAQgASgLMg4udXNlcl9ndy5SYW5nZUgAUgVyYW5nZRIWCgVsZXZlbBgFIAEoBUgAUgVsZXZlbEIGCgRydWxl');
@$core.Deprecated('Use rangeDescriptor instead')
const Range$json = const {
  '1': 'Range',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 5, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 5, '10': 'to'},
  ],
};

/// Descriptor for `Range`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeDescriptor = $convert.base64Decode('CgVSYW5nZRISCgRmcm9tGAEgASgFUgRmcm9tEg4KAnRvGAIgASgFUgJ0bw==');
@$core.Deprecated('Use addWhiteListNumberRequestDescriptor instead')
const AddWhiteListNumberRequest$json = const {
  '1': 'AddWhiteListNumberRequest',
  '2': const [
    const {'1': 'own_number', '3': 1, '4': 1, '5': 9, '10': 'ownNumber'},
    const {'1': 'peer_number', '3': 2, '4': 1, '5': 9, '10': 'peerNumber'},
  ],
};

/// Descriptor for `AddWhiteListNumberRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addWhiteListNumberRequestDescriptor = $convert.base64Decode('ChlBZGRXaGl0ZUxpc3ROdW1iZXJSZXF1ZXN0Eh0KCm93bl9udW1iZXIYASABKAlSCW93bk51bWJlchIfCgtwZWVyX251bWJlchgCIAEoCVIKcGVlck51bWJlcg==');
@$core.Deprecated('Use addWhiteListRangeRequestDescriptor instead')
const AddWhiteListRangeRequest$json = const {
  '1': 'AddWhiteListRangeRequest',
  '2': const [
    const {'1': 'own_number', '3': 1, '4': 1, '5': 9, '10': 'ownNumber'},
    const {'1': 'from', '3': 2, '4': 1, '5': 5, '10': 'from'},
    const {'1': 'to', '3': 3, '4': 1, '5': 5, '10': 'to'},
  ],
};

/// Descriptor for `AddWhiteListRangeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addWhiteListRangeRequestDescriptor = $convert.base64Decode('ChhBZGRXaGl0ZUxpc3RSYW5nZVJlcXVlc3QSHQoKb3duX251bWJlchgBIAEoCVIJb3duTnVtYmVyEhIKBGZyb20YAiABKAVSBGZyb20SDgoCdG8YAyABKAVSAnRv');
@$core.Deprecated('Use addWhiteListLevelRequestDescriptor instead')
const AddWhiteListLevelRequest$json = const {
  '1': 'AddWhiteListLevelRequest',
  '2': const [
    const {'1': 'own_number', '3': 1, '4': 1, '5': 9, '10': 'ownNumber'},
    const {'1': 'level', '3': 2, '4': 1, '5': 5, '10': 'level'},
  ],
};

/// Descriptor for `AddWhiteListLevelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addWhiteListLevelRequestDescriptor = $convert.base64Decode('ChhBZGRXaGl0ZUxpc3RMZXZlbFJlcXVlc3QSHQoKb3duX251bWJlchgBIAEoCVIJb3duTnVtYmVyEhQKBWxldmVsGAIgASgFUgVsZXZlbA==');
@$core.Deprecated('Use whitelistDescriptor instead')
const Whitelist$json = const {
  '1': 'Whitelist',
  '2': const [
    const {'1': 'number', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'number'},
    const {'1': 'range', '3': 4, '4': 1, '5': 11, '6': '.user_gw.Range', '9': 0, '10': 'range'},
    const {'1': 'level', '3': 5, '4': 1, '5': 5, '9': 0, '10': 'level'},
  ],
  '8': const [
    const {'1': 'rule'},
  ],
};

/// Descriptor for `Whitelist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whitelistDescriptor = $convert.base64Decode('CglXaGl0ZWxpc3QSGAoGbnVtYmVyGAMgASgJSABSBm51bWJlchImCgVyYW5nZRgEIAEoCzIOLnVzZXJfZ3cuUmFuZ2VIAFIFcmFuZ2USFgoFbGV2ZWwYBSABKAVIAFIFbGV2ZWxCBgoEcnVsZQ==');
@$core.Deprecated('Use whitelistsDescriptor instead')
const Whitelists$json = const {
  '1': 'Whitelists',
  '2': const [
    const {'1': 'whitelist', '3': 1, '4': 3, '5': 11, '6': '.user_gw.Whitelist', '10': 'whitelist'},
  ],
};

/// Descriptor for `Whitelists`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List whitelistsDescriptor = $convert.base64Decode('CgpXaGl0ZWxpc3RzEjAKCXdoaXRlbGlzdBgBIAMoCzISLnVzZXJfZ3cuV2hpdGVsaXN0Ugl3aGl0ZWxpc3Q=');
@$core.Deprecated('Use getWhitelistDescriptor instead')
const GetWhitelist$json = const {
  '1': 'GetWhitelist',
  '2': const [
    const {'1': 'phone', '3': 2, '4': 1, '5': 9, '10': 'phone'},
  ],
};

/// Descriptor for `GetWhitelist`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getWhitelistDescriptor = $convert.base64Decode('CgxHZXRXaGl0ZWxpc3QSFAoFcGhvbmUYAiABKAlSBXBob25l');
