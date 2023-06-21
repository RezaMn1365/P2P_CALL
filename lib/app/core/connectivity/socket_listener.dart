// import 'dart:async';
// import 'dart:convert';

// import 'package:basir_core_sdk/basir_core_sdk.dart';
// import 'package:screen_recorder_device/app/core/connectivity/socket_connection.dart';

// class SocketListener {
//   late StreamController<dynamic> _controller;
//   Stream<dynamic> get events => _controller.stream;
//   bool connected = false;
//   // SocketListener(BasirCore basir);

//   //MAKE SINGLETON
//   static final SocketListener _singleton = SocketListener._internal();
//   factory SocketListener() {
//     return _singleton;
//   }
//   //In java
//   // static Storage getInstance() {
//   //   return _singleton;
//   // }
//   SocketListener._internal();
//   //END OF SINGLETON

//   Future<String> makeSocketSignInData() async {
//     var tokens = await BasirCore().storage.getTokens();
//     var getNumbers = await BasirCore().call.getNumbers();

//     var socketSignInData = {
//       "own_number": getNumbers.numbers[0].number,
//       "token": tokens['accessToken'],
//       "agent": 'mobile_device'
//     };
//     var socketData = const JsonEncoder()
//         .convert({"event": 'user_signin', "data": socketSignInData});
//     // print('Socket Data: $socketData');
//     return socketData;
//   }

//   Future<void> connect() async {
//     _controller = StreamController<dynamic>.broadcast();
//     await CallSocket().initialize();

//     if (CallSocket().initialized) {
//       CallSocket().sink.add(await makeSocketSignInData());
//       CallSocket().stream.listen(
//         (raw) async {
//           try {
//             _controller.sink.add(await jsonDecode(raw));
//             connected = true;
//           } catch (e) {
//             connected = false;
//             rethrow;
//           }
//         },
//         onDone: () {
//           connected = false;
//         },
//         onError: (e) {
//           connected = false;
//         },
//       );
//     } else {}
//   }
// }
