///
//  Generated code. Do not modify.
//  source: messages.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use commandMessageDescriptor instead')
const CommandMessage$json = const {
  '1': 'CommandMessage',
  '2': const [
    const {'1': 'getLocation', '3': 1, '4': 1, '5': 11, '6': '.device.GetLocation', '9': 0, '10': 'getLocation'},
    const {'1': 'getAcceleration', '3': 2, '4': 1, '5': 11, '6': '.device.GetAcceleration', '9': 0, '10': 'getAcceleration'},
    const {'1': 'getCompass', '3': 3, '4': 1, '5': 11, '6': '.device.GetCompass', '9': 0, '10': 'getCompass'},
    const {'1': 'getBattery', '3': 4, '4': 1, '5': 11, '6': '.device.GetBattery', '9': 0, '10': 'getBattery'},
    const {'1': 'getGyroscope', '3': 5, '4': 1, '5': 11, '6': '.device.GetGyroscope', '9': 0, '10': 'getGyroscope'},
    const {'1': 'getDirectoryInfo', '3': 6, '4': 1, '5': 11, '6': '.device.GetDirectoryInfo', '9': 0, '10': 'getDirectoryInfo'},
    const {'1': 'videoRecord', '3': 7, '4': 1, '5': 11, '6': '.device.VideoRecord', '9': 0, '10': 'videoRecord'},
    const {'1': 'audioRecord', '3': 8, '4': 1, '5': 11, '6': '.device.AudioRecord', '9': 0, '10': 'audioRecord'},
    const {'1': 'takePhoto', '3': 9, '4': 1, '5': 11, '6': '.device.TakePhoto', '9': 0, '10': 'takePhoto'},
  ],
  '8': const [
    const {'1': 'command'},
  ],
};

/// Descriptor for `CommandMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List commandMessageDescriptor = $convert.base64Decode('Cg5Db21tYW5kTWVzc2FnZRI3CgtnZXRMb2NhdGlvbhgBIAEoCzITLmRldmljZS5HZXRMb2NhdGlvbkgAUgtnZXRMb2NhdGlvbhJDCg9nZXRBY2NlbGVyYXRpb24YAiABKAsyFy5kZXZpY2UuR2V0QWNjZWxlcmF0aW9uSABSD2dldEFjY2VsZXJhdGlvbhI0CgpnZXRDb21wYXNzGAMgASgLMhIuZGV2aWNlLkdldENvbXBhc3NIAFIKZ2V0Q29tcGFzcxI0CgpnZXRCYXR0ZXJ5GAQgASgLMhIuZGV2aWNlLkdldEJhdHRlcnlIAFIKZ2V0QmF0dGVyeRI6CgxnZXRHeXJvc2NvcGUYBSABKAsyFC5kZXZpY2UuR2V0R3lyb3Njb3BlSABSDGdldEd5cm9zY29wZRJGChBnZXREaXJlY3RvcnlJbmZvGAYgASgLMhguZGV2aWNlLkdldERpcmVjdG9yeUluZm9IAFIQZ2V0RGlyZWN0b3J5SW5mbxI3Cgt2aWRlb1JlY29yZBgHIAEoCzITLmRldmljZS5WaWRlb1JlY29yZEgAUgt2aWRlb1JlY29yZBI3CgthdWRpb1JlY29yZBgIIAEoCzITLmRldmljZS5BdWRpb1JlY29yZEgAUgthdWRpb1JlY29yZBIxCgl0YWtlUGhvdG8YCSABKAsyES5kZXZpY2UuVGFrZVBob3RvSABSCXRha2VQaG90b0IJCgdjb21tYW5k');
@$core.Deprecated('Use getLocationDescriptor instead')
const GetLocation$json = const {
  '1': 'GetLocation',
};

/// Descriptor for `GetLocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationDescriptor = $convert.base64Decode('CgtHZXRMb2NhdGlvbg==');
@$core.Deprecated('Use getDirectoryInfoDescriptor instead')
const GetDirectoryInfo$json = const {
  '1': 'GetDirectoryInfo',
  '2': const [
    const {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `GetDirectoryInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getDirectoryInfoDescriptor = $convert.base64Decode('ChBHZXREaXJlY3RvcnlJbmZvEhIKBHBhdGgYASABKAlSBHBhdGg=');
@$core.Deprecated('Use getAccelerationDescriptor instead')
const GetAcceleration$json = const {
  '1': 'GetAcceleration',
};

/// Descriptor for `GetAcceleration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getAccelerationDescriptor = $convert.base64Decode('Cg9HZXRBY2NlbGVyYXRpb24=');
@$core.Deprecated('Use getCompassDescriptor instead')
const GetCompass$json = const {
  '1': 'GetCompass',
};

/// Descriptor for `GetCompass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCompassDescriptor = $convert.base64Decode('CgpHZXRDb21wYXNz');
@$core.Deprecated('Use getBatteryDescriptor instead')
const GetBattery$json = const {
  '1': 'GetBattery',
};

/// Descriptor for `GetBattery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBatteryDescriptor = $convert.base64Decode('CgpHZXRCYXR0ZXJ5');
@$core.Deprecated('Use getGyroscopeDescriptor instead')
const GetGyroscope$json = const {
  '1': 'GetGyroscope',
};

/// Descriptor for `GetGyroscope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getGyroscopeDescriptor = $convert.base64Decode('CgxHZXRHeXJvc2NvcGU=');
@$core.Deprecated('Use videoRecordDescriptor instead')
const VideoRecord$json = const {
  '1': 'VideoRecord',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 5, '10': 'start'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 5, '10': 'duration'},
  ],
};

/// Descriptor for `VideoRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoRecordDescriptor = $convert.base64Decode('CgtWaWRlb1JlY29yZBIUCgVzdGFydBgBIAEoBVIFc3RhcnQSGgoIZHVyYXRpb24YAiABKAVSCGR1cmF0aW9u');
@$core.Deprecated('Use audioRecordDescriptor instead')
const AudioRecord$json = const {
  '1': 'AudioRecord',
  '2': const [
    const {'1': 'start', '3': 1, '4': 1, '5': 5, '10': 'start'},
    const {'1': 'duration', '3': 2, '4': 1, '5': 5, '10': 'duration'},
  ],
};

/// Descriptor for `AudioRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioRecordDescriptor = $convert.base64Decode('CgtBdWRpb1JlY29yZBIUCgVzdGFydBgBIAEoBVIFc3RhcnQSGgoIZHVyYXRpb24YAiABKAVSCGR1cmF0aW9u');
@$core.Deprecated('Use takePhotoDescriptor instead')
const TakePhoto$json = const {
  '1': 'TakePhoto',
  '2': const [
    const {'1': 'resulation', '3': 1, '4': 1, '5': 9, '10': 'resulation'},
  ],
};

/// Descriptor for `TakePhoto`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List takePhotoDescriptor = $convert.base64Decode('CglUYWtlUGhvdG8SHgoKcmVzdWxhdGlvbhgBIAEoCVIKcmVzdWxhdGlvbg==');
@$core.Deprecated('Use reportMessageDescriptor instead')
const ReportMessage$json = const {
  '1': 'ReportMessage',
  '2': const [
    const {'1': 'location', '3': 1, '4': 1, '5': 11, '6': '.device.Location', '9': 0, '10': 'location'},
    const {'1': 'acceleration', '3': 2, '4': 1, '5': 11, '6': '.device.Acceleration', '9': 0, '10': 'acceleration'},
    const {'1': 'compass', '3': 3, '4': 1, '5': 11, '6': '.device.Compass', '9': 0, '10': 'compass'},
    const {'1': 'battery', '3': 4, '4': 1, '5': 11, '6': '.device.Battery', '9': 0, '10': 'battery'},
    const {'1': 'gyroscope', '3': 5, '4': 1, '5': 11, '6': '.device.Gyroscope', '9': 0, '10': 'gyroscope'},
    const {'1': 'directoryInfo', '3': 6, '4': 1, '5': 11, '6': '.device.DirectoryInfo', '9': 0, '10': 'directoryInfo'},
    const {'1': 'audio', '3': 7, '4': 1, '5': 11, '6': '.device.Audio', '9': 0, '10': 'audio'},
    const {'1': 'photo', '3': 8, '4': 1, '5': 11, '6': '.device.Photo', '9': 0, '10': 'photo'},
    const {'1': 'video', '3': 9, '4': 1, '5': 11, '6': '.device.Video', '9': 0, '10': 'video'},
  ],
  '8': const [
    const {'1': 'report'},
  ],
};

/// Descriptor for `ReportMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reportMessageDescriptor = $convert.base64Decode('Cg1SZXBvcnRNZXNzYWdlEi4KCGxvY2F0aW9uGAEgASgLMhAuZGV2aWNlLkxvY2F0aW9uSABSCGxvY2F0aW9uEjoKDGFjY2VsZXJhdGlvbhgCIAEoCzIULmRldmljZS5BY2NlbGVyYXRpb25IAFIMYWNjZWxlcmF0aW9uEisKB2NvbXBhc3MYAyABKAsyDy5kZXZpY2UuQ29tcGFzc0gAUgdjb21wYXNzEisKB2JhdHRlcnkYBCABKAsyDy5kZXZpY2UuQmF0dGVyeUgAUgdiYXR0ZXJ5EjEKCWd5cm9zY29wZRgFIAEoCzIRLmRldmljZS5HeXJvc2NvcGVIAFIJZ3lyb3Njb3BlEj0KDWRpcmVjdG9yeUluZm8YBiABKAsyFS5kZXZpY2UuRGlyZWN0b3J5SW5mb0gAUg1kaXJlY3RvcnlJbmZvEiUKBWF1ZGlvGAcgASgLMg0uZGV2aWNlLkF1ZGlvSABSBWF1ZGlvEiUKBXBob3RvGAggASgLMg0uZGV2aWNlLlBob3RvSABSBXBob3RvEiUKBXZpZGVvGAkgASgLMg0uZGV2aWNlLlZpZGVvSABSBXZpZGVvQggKBnJlcG9ydA==');
@$core.Deprecated('Use sampleDescriptor instead')
const Sample$json = const {
  '1': 'Sample',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 5, '10': 'timestamp'},
    const {'1': 'report', '3': 2, '4': 1, '5': 11, '6': '.device.ReportMessage', '10': 'report'},
  ],
};

/// Descriptor for `Sample`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sampleDescriptor = $convert.base64Decode('CgZTYW1wbGUSHAoJdGltZXN0YW1wGAEgASgFUgl0aW1lc3RhbXASLQoGcmVwb3J0GAIgASgLMhUuZGV2aWNlLlJlcG9ydE1lc3NhZ2VSBnJlcG9ydA==');
@$core.Deprecated('Use photoDescriptor instead')
const Photo$json = const {
  '1': 'Photo',
  '2': const [
    const {'1': 'content', '3': 1, '4': 3, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `Photo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List photoDescriptor = $convert.base64Decode('CgVQaG90bxIYCgdjb250ZW50GAEgAygMUgdjb250ZW50');
@$core.Deprecated('Use audioDescriptor instead')
const Audio$json = const {
  '1': 'Audio',
  '2': const [
    const {'1': 'content', '3': 1, '4': 3, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `Audio`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List audioDescriptor = $convert.base64Decode('CgVBdWRpbxIYCgdjb250ZW50GAEgAygMUgdjb250ZW50');
@$core.Deprecated('Use videoDescriptor instead')
const Video$json = const {
  '1': 'Video',
  '2': const [
    const {'1': 'content', '3': 1, '4': 3, '5': 12, '10': 'content'},
  ],
};

/// Descriptor for `Video`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List videoDescriptor = $convert.base64Decode('CgVWaWRlbxIYCgdjb250ZW50GAEgAygMUgdjb250ZW50');
@$core.Deprecated('Use locationDescriptor instead')
const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'lat', '3': 1, '4': 1, '5': 1, '10': 'lat'},
    const {'1': 'lng', '3': 2, '4': 1, '5': 1, '10': 'lng'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor = $convert.base64Decode('CghMb2NhdGlvbhIQCgNsYXQYASABKAFSA2xhdBIQCgNsbmcYAiABKAFSA2xuZw==');
@$core.Deprecated('Use accelerationDescriptor instead')
const Acceleration$json = const {
  '1': 'Acceleration',
  '2': const [
    const {'1': 'totalAcceleration', '3': 1, '4': 1, '5': 1, '10': 'totalAcceleration'},
    const {'1': 'xAcceleration', '3': 2, '4': 1, '5': 1, '10': 'xAcceleration'},
    const {'1': 'yAcceleration', '3': 3, '4': 1, '5': 1, '10': 'yAcceleration'},
    const {'1': 'zAcceleration', '3': 4, '4': 1, '5': 1, '10': 'zAcceleration'},
  ],
};

/// Descriptor for `Acceleration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List accelerationDescriptor = $convert.base64Decode('CgxBY2NlbGVyYXRpb24SLAoRdG90YWxBY2NlbGVyYXRpb24YASABKAFSEXRvdGFsQWNjZWxlcmF0aW9uEiQKDXhBY2NlbGVyYXRpb24YAiABKAFSDXhBY2NlbGVyYXRpb24SJAoNeUFjY2VsZXJhdGlvbhgDIAEoAVINeUFjY2VsZXJhdGlvbhIkCg16QWNjZWxlcmF0aW9uGAQgASgBUg16QWNjZWxlcmF0aW9u');
@$core.Deprecated('Use compassDescriptor instead')
const Compass$json = const {
  '1': 'Compass',
  '2': const [
    const {'1': 'direction', '3': 1, '4': 1, '5': 1, '10': 'direction'},
    const {'1': 'xMagnetometer', '3': 2, '4': 1, '5': 1, '10': 'xMagnetometer'},
    const {'1': 'yMagnetometer', '3': 3, '4': 1, '5': 1, '10': 'yMagnetometer'},
    const {'1': 'zMagnetometer', '3': 4, '4': 1, '5': 1, '10': 'zMagnetometer'},
  ],
};

/// Descriptor for `Compass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List compassDescriptor = $convert.base64Decode('CgdDb21wYXNzEhwKCWRpcmVjdGlvbhgBIAEoAVIJZGlyZWN0aW9uEiQKDXhNYWduZXRvbWV0ZXIYAiABKAFSDXhNYWduZXRvbWV0ZXISJAoNeU1hZ25ldG9tZXRlchgDIAEoAVINeU1hZ25ldG9tZXRlchIkCg16TWFnbmV0b21ldGVyGAQgASgBUg16TWFnbmV0b21ldGVy');
@$core.Deprecated('Use gyroscopeDescriptor instead')
const Gyroscope$json = const {
  '1': 'Gyroscope',
  '2': const [
    const {'1': 'allAxis', '3': 1, '4': 3, '5': 1, '10': 'allAxis'},
    const {'1': 'xGyroscpoe', '3': 2, '4': 1, '5': 1, '10': 'xGyroscpoe'},
    const {'1': 'yGyroscpoe', '3': 3, '4': 1, '5': 1, '10': 'yGyroscpoe'},
    const {'1': 'zGyroscpoe', '3': 4, '4': 1, '5': 1, '10': 'zGyroscpoe'},
  ],
};

/// Descriptor for `Gyroscope`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gyroscopeDescriptor = $convert.base64Decode('CglHeXJvc2NvcGUSGAoHYWxsQXhpcxgBIAMoAVIHYWxsQXhpcxIeCgp4R3lyb3NjcG9lGAIgASgBUgp4R3lyb3NjcG9lEh4KCnlHeXJvc2Nwb2UYAyABKAFSCnlHeXJvc2Nwb2USHgoKekd5cm9zY3BvZRgEIAEoAVIKekd5cm9zY3BvZQ==');
@$core.Deprecated('Use batteryDescriptor instead')
const Battery$json = const {
  '1': 'Battery',
  '2': const [
    const {'1': 'charge', '3': 1, '4': 1, '5': 5, '10': 'charge'},
    const {'1': 'health', '3': 2, '4': 1, '5': 9, '10': 'health'},
    const {'1': 'status', '3': 3, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `Battery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batteryDescriptor = $convert.base64Decode('CgdCYXR0ZXJ5EhYKBmNoYXJnZRgBIAEoBVIGY2hhcmdlEhYKBmhlYWx0aBgCIAEoCVIGaGVhbHRoEhYKBnN0YXR1cxgDIAEoCVIGc3RhdHVz');
@$core.Deprecated('Use directoryInfoDescriptor instead')
const DirectoryInfo$json = const {
  '1': 'DirectoryInfo',
  '2': const [
    const {'1': 'files', '3': 1, '4': 3, '5': 11, '6': '.device.FileInfo', '10': 'files'},
  ],
};

/// Descriptor for `DirectoryInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List directoryInfoDescriptor = $convert.base64Decode('Cg1EaXJlY3RvcnlJbmZvEiYKBWZpbGVzGAEgAygLMhAuZGV2aWNlLkZpbGVJbmZvUgVmaWxlcw==');
@$core.Deprecated('Use fileInfoDescriptor instead')
const FileInfo$json = const {
  '1': 'FileInfo',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'extention', '3': 2, '4': 1, '5': 9, '10': 'extention'},
    const {'1': 'relativePath', '3': 3, '4': 1, '5': 9, '10': 'relativePath'},
    const {'1': 'size', '3': 4, '4': 1, '5': 5, '10': 'size'},
    const {'1': 'isDirectory', '3': 5, '4': 1, '5': 8, '10': 'isDirectory'},
    const {'1': 'modifiedAt', '3': 7, '4': 1, '5': 9, '10': 'modifiedAt'},
  ],
};

/// Descriptor for `FileInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileInfoDescriptor = $convert.base64Decode('CghGaWxlSW5mbxISCgRuYW1lGAEgASgJUgRuYW1lEhwKCWV4dGVudGlvbhgCIAEoCVIJZXh0ZW50aW9uEiIKDHJlbGF0aXZlUGF0aBgDIAEoCVIMcmVsYXRpdmVQYXRoEhIKBHNpemUYBCABKAVSBHNpemUSIAoLaXNEaXJlY3RvcnkYBSABKAhSC2lzRGlyZWN0b3J5Eh4KCm1vZGlmaWVkQXQYByABKAlSCm1vZGlmaWVkQXQ=');
