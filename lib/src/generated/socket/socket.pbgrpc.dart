///
//  Generated code. Do not modify.
//  source: socket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'socket.pb.dart' as $0;
export 'socket.pb.dart';

class SocketServiceClient extends $grpc.Client {
  static final _$verify = $grpc.ClientMethod<$0.VerificationRequest, $0.Empty>(
      '/panel_tcp_socket.SocketService/Verify',
      ($0.VerificationRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));

  SocketServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Empty> verify($0.VerificationRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$verify, request, options: options);
  }
}

abstract class SocketServiceBase extends $grpc.Service {
  $core.String get $name => 'panel_tcp_socket.SocketService';

  SocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.VerificationRequest, $0.Empty>(
        'Verify',
        verify_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.VerificationRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$0.Empty> verify_Pre($grpc.ServiceCall call,
      $async.Future<$0.VerificationRequest> request) async {
    return verify(call, await request);
  }

  $async.Future<$0.Empty> verify(
      $grpc.ServiceCall call, $0.VerificationRequest request);
}
