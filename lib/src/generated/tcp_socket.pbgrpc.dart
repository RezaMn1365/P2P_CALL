///
//  Generated code. Do not modify.
//  source: tcp_socket.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tcp_socket.pb.dart' as $0;
export 'tcp_socket.pb.dart';

class TcpSocketServiceClient extends $grpc.Client {
  static final _$greet = $grpc.ClientMethod<$0.HelloRequest, $0.HelloResponse>(
      '/tcp_socket.TcpSocketService/Greet',
      ($0.HelloRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HelloResponse.fromBuffer(value));

  TcpSocketServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.HelloResponse> greet($0.HelloRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$greet, request, options: options);
  }
}

abstract class TcpSocketServiceBase extends $grpc.Service {
  $core.String get $name => 'tcp_socket.TcpSocketService';

  TcpSocketServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.HelloRequest, $0.HelloResponse>(
        'Greet',
        greet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HelloRequest.fromBuffer(value),
        ($0.HelloResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.HelloResponse> greet_Pre(
      $grpc.ServiceCall call, $async.Future<$0.HelloRequest> request) async {
    return greet(call, await request);
  }

  $async.Future<$0.HelloResponse> greet(
      $grpc.ServiceCall call, $0.HelloRequest request);
}
