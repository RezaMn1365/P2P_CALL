///
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'user.pb.dart' as $0;
export 'user.pb.dart';

class AuthenticationServiceClient extends $grpc.Client {
  static final _$authenticate =
      $grpc.ClientMethod<$0.UserSigninRequest, $0.UserSinginResponse>(
          '/user_gw.AuthenticationService/Authenticate',
          ($0.UserSigninRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UserSinginResponse.fromBuffer(value));
  static final _$renewToken =
      $grpc.ClientMethod<$0.RenewTokenRequest, $0.RenewTokenResonse>(
          '/user_gw.AuthenticationService/RenewToken',
          ($0.RenewTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RenewTokenResonse.fromBuffer(value));
  static final _$logout =
      $grpc.ClientMethod<$0.LogoutRequest, $0.DefaultResponse>(
          '/user_gw.AuthenticationService/Logout',
          ($0.LogoutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DefaultResponse.fromBuffer(value));

  AuthenticationServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.UserSinginResponse> authenticate(
      $0.UserSigninRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$authenticate, request, options: options);
  }

  $grpc.ResponseFuture<$0.RenewTokenResonse> renewToken(
      $0.RenewTokenRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$renewToken, request, options: options);
  }

  $grpc.ResponseFuture<$0.DefaultResponse> logout($0.LogoutRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$logout, request, options: options);
  }
}

abstract class AuthenticationServiceBase extends $grpc.Service {
  $core.String get $name => 'user_gw.AuthenticationService';

  AuthenticationServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UserSigninRequest, $0.UserSinginResponse>(
        'Authenticate',
        authenticate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UserSigninRequest.fromBuffer(value),
        ($0.UserSinginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RenewTokenRequest, $0.RenewTokenResonse>(
        'RenewToken',
        renewToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RenewTokenRequest.fromBuffer(value),
        ($0.RenewTokenResonse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LogoutRequest, $0.DefaultResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogoutRequest.fromBuffer(value),
        ($0.DefaultResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UserSinginResponse> authenticate_Pre($grpc.ServiceCall call,
      $async.Future<$0.UserSigninRequest> request) async {
    return authenticate(call, await request);
  }

  $async.Future<$0.RenewTokenResonse> renewToken_Pre($grpc.ServiceCall call,
      $async.Future<$0.RenewTokenRequest> request) async {
    return renewToken(call, await request);
  }

  $async.Future<$0.DefaultResponse> logout_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LogoutRequest> request) async {
    return logout(call, await request);
  }

  $async.Future<$0.UserSinginResponse> authenticate(
      $grpc.ServiceCall call, $0.UserSigninRequest request);
  $async.Future<$0.RenewTokenResonse> renewToken(
      $grpc.ServiceCall call, $0.RenewTokenRequest request);
  $async.Future<$0.DefaultResponse> logout(
      $grpc.ServiceCall call, $0.LogoutRequest request);
}

class ProfilesServiceClient extends $grpc.Client {
  static final _$getProfile = $grpc.ClientMethod<$0.Empty, $0.Profile>(
      '/user_gw.ProfilesService/GetProfile',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Profile.fromBuffer(value));

  ProfilesServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Profile> getProfile($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getProfile, request, options: options);
  }
}

abstract class ProfilesServiceBase extends $grpc.Service {
  $core.String get $name => 'user_gw.ProfilesService';

  ProfilesServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Profile>(
        'GetProfile',
        getProfile_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Profile value) => value.writeToBuffer()));
  }

  $async.Future<$0.Profile> getProfile_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getProfile(call, await request);
  }

  $async.Future<$0.Profile> getProfile(
      $grpc.ServiceCall call, $0.Empty request);
}

class SectionsServiceClient extends $grpc.Client {
  static final _$getSection =
      $grpc.ClientMethod<$0.GetSectionRequest, $0.Section>(
          '/user_gw.SectionsService/GetSection',
          ($0.GetSectionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Section.fromBuffer(value));

  SectionsServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Section> getSection($0.GetSectionRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSection, request, options: options);
  }
}

abstract class SectionsServiceBase extends $grpc.Service {
  $core.String get $name => 'user_gw.SectionsService';

  SectionsServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetSectionRequest, $0.Section>(
        'GetSection',
        getSection_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetSectionRequest.fromBuffer(value),
        ($0.Section value) => value.writeToBuffer()));
  }

  $async.Future<$0.Section> getSection_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetSectionRequest> request) async {
    return getSection(call, await request);
  }

  $async.Future<$0.Section> getSection(
      $grpc.ServiceCall call, $0.GetSectionRequest request);
}

class ConnectorServiceClient extends $grpc.Client {
  static final _$getTicket = $grpc.ClientMethod<$0.Empty, $0.GetTicketResponse>(
      '/user_gw.ConnectorService/GetTicket',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTicketResponse.fromBuffer(value));

  ConnectorServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetTicketResponse> getTicket($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTicket, request, options: options);
  }
}

abstract class ConnectorServiceBase extends $grpc.Service {
  $core.String get $name => 'user_gw.ConnectorService';

  ConnectorServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.GetTicketResponse>(
        'GetTicket',
        getTicket_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.GetTicketResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetTicketResponse> getTicket_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getTicket(call, await request);
  }

  $async.Future<$0.GetTicketResponse> getTicket(
      $grpc.ServiceCall call, $0.Empty request);
}

class RoomManagementServiceClient extends $grpc.Client {
  static final _$getRoom =
      $grpc.ClientMethod<$0.GetRoomRequest, $0.GetRoomResponse>(
          '/user_gw.RoomManagementService/GetRoom',
          ($0.GetRoomRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetRoomResponse.fromBuffer(value));

  RoomManagementServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetRoomResponse> getRoom($0.GetRoomRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getRoom, request, options: options);
  }
}

abstract class RoomManagementServiceBase extends $grpc.Service {
  $core.String get $name => 'user_gw.RoomManagementService';

  RoomManagementServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetRoomRequest, $0.GetRoomResponse>(
        'GetRoom',
        getRoom_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetRoomRequest.fromBuffer(value),
        ($0.GetRoomResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetRoomResponse> getRoom_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetRoomRequest> request) async {
    return getRoom(call, await request);
  }

  $async.Future<$0.GetRoomResponse> getRoom(
      $grpc.ServiceCall call, $0.GetRoomRequest request);
}

class TrackerServiceClient extends $grpc.Client {
  static final _$getTracker =
      $grpc.ClientMethod<$0.GetTrackerRequest, $0.GetTrackerResponse>(
          '/user_gw.TrackerService/GetTracker',
          ($0.GetTrackerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetTrackerResponse.fromBuffer(value));
  static final _$getUserRelation =
      $grpc.ClientMethod<$0.Empty, $0.GetUserRelationResponse>(
          '/user_gw.TrackerService/GetUserRelation',
          ($0.Empty value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetUserRelationResponse.fromBuffer(value));

  TrackerServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetTrackerResponse> getTracker(
      $0.GetTrackerRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTracker, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetUserRelationResponse> getUserRelation(
      $0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserRelation, request, options: options);
  }
}

abstract class TrackerServiceBase extends $grpc.Service {
  $core.String get $name => 'user_gw.TrackerService';

  TrackerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetTrackerRequest, $0.GetTrackerResponse>(
        'GetTracker',
        getTracker_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTrackerRequest.fromBuffer(value),
        ($0.GetTrackerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.GetUserRelationResponse>(
        'GetUserRelation',
        getUserRelation_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.GetUserRelationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetTrackerResponse> getTracker_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetTrackerRequest> request) async {
    return getTracker(call, await request);
  }

  $async.Future<$0.GetUserRelationResponse> getUserRelation_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getUserRelation(call, await request);
  }

  $async.Future<$0.GetTrackerResponse> getTracker(
      $grpc.ServiceCall call, $0.GetTrackerRequest request);
  $async.Future<$0.GetUserRelationResponse> getUserRelation(
      $grpc.ServiceCall call, $0.Empty request);
}

class InternalCallServiceClient extends $grpc.Client {
  static final _$getUserPhones = $grpc.ClientMethod<$0.Empty, $0.Numbers>(
      '/user_gw.InternalCallService/GetUserPhones',
      ($0.Empty value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Numbers.fromBuffer(value));
  static final _$addWhiteListNumber =
      $grpc.ClientMethod<$0.AddWhiteListNumberRequest, $0.Empty>(
          '/user_gw.InternalCallService/AddWhiteListNumber',
          ($0.AddWhiteListNumberRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$addWhiteListRange =
      $grpc.ClientMethod<$0.AddWhiteListRangeRequest, $0.Empty>(
          '/user_gw.InternalCallService/AddWhiteListRange',
          ($0.AddWhiteListRangeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$addWhiteListLevel =
      $grpc.ClientMethod<$0.AddWhiteListLevelRequest, $0.Empty>(
          '/user_gw.InternalCallService/AddWhiteListLevel',
          ($0.AddWhiteListLevelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Empty.fromBuffer(value));
  static final _$getWhitelists =
      $grpc.ClientMethod<$0.GetWhitelist, $0.Whitelists>(
          '/user_gw.InternalCallService/GetWhitelists',
          ($0.GetWhitelist value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Whitelists.fromBuffer(value));

  InternalCallServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Numbers> getUserPhones($0.Empty request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUserPhones, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> addWhiteListNumber(
      $0.AddWhiteListNumberRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWhiteListNumber, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> addWhiteListRange(
      $0.AddWhiteListRangeRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWhiteListRange, request, options: options);
  }

  $grpc.ResponseFuture<$0.Empty> addWhiteListLevel(
      $0.AddWhiteListLevelRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addWhiteListLevel, request, options: options);
  }

  $grpc.ResponseFuture<$0.Whitelists> getWhitelists($0.GetWhitelist request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getWhitelists, request, options: options);
  }
}

abstract class InternalCallServiceBase extends $grpc.Service {
  $core.String get $name => 'user_gw.InternalCallService';

  InternalCallServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Empty, $0.Numbers>(
        'GetUserPhones',
        getUserPhones_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Empty.fromBuffer(value),
        ($0.Numbers value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddWhiteListNumberRequest, $0.Empty>(
        'AddWhiteListNumber',
        addWhiteListNumber_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddWhiteListNumberRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddWhiteListRangeRequest, $0.Empty>(
        'AddWhiteListRange',
        addWhiteListRange_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddWhiteListRangeRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddWhiteListLevelRequest, $0.Empty>(
        'AddWhiteListLevel',
        addWhiteListLevel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AddWhiteListLevelRequest.fromBuffer(value),
        ($0.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetWhitelist, $0.Whitelists>(
        'GetWhitelists',
        getWhitelists_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetWhitelist.fromBuffer(value),
        ($0.Whitelists value) => value.writeToBuffer()));
  }

  $async.Future<$0.Numbers> getUserPhones_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Empty> request) async {
    return getUserPhones(call, await request);
  }

  $async.Future<$0.Empty> addWhiteListNumber_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddWhiteListNumberRequest> request) async {
    return addWhiteListNumber(call, await request);
  }

  $async.Future<$0.Empty> addWhiteListRange_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddWhiteListRangeRequest> request) async {
    return addWhiteListRange(call, await request);
  }

  $async.Future<$0.Empty> addWhiteListLevel_Pre($grpc.ServiceCall call,
      $async.Future<$0.AddWhiteListLevelRequest> request) async {
    return addWhiteListLevel(call, await request);
  }

  $async.Future<$0.Whitelists> getWhitelists_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetWhitelist> request) async {
    return getWhitelists(call, await request);
  }

  $async.Future<$0.Numbers> getUserPhones(
      $grpc.ServiceCall call, $0.Empty request);
  $async.Future<$0.Empty> addWhiteListNumber(
      $grpc.ServiceCall call, $0.AddWhiteListNumberRequest request);
  $async.Future<$0.Empty> addWhiteListRange(
      $grpc.ServiceCall call, $0.AddWhiteListRangeRequest request);
  $async.Future<$0.Empty> addWhiteListLevel(
      $grpc.ServiceCall call, $0.AddWhiteListLevelRequest request);
  $async.Future<$0.Whitelists> getWhitelists(
      $grpc.ServiceCall call, $0.GetWhitelist request);
}
