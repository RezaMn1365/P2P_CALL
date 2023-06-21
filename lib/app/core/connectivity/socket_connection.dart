// import 'dart:async';
// import 'dart:io';
// import 'package:web_socket_channel/io.dart';
// import 'package:web_socket_channel/web_socket_channel.dart';

// class MyHttpOverrides extends HttpOverrides {
//   @override
//   HttpClient createHttpClient(SecurityContext? context) {
//     return super.createHttpClient(context)
//       ..badCertificateCallback =
//           (X509Certificate cert, String host, int port) =>
//               true; // add your localhost detection logic here if you want
//   }
// }

// class CallSocket {
//   late StreamController<dynamic> _controller;
//   late IOWebSocketChannel _channel;
//   bool initialized = false;

//   //MAKE SINGLETON
//   static final CallSocket _singleton = CallSocket._internal();
//   factory CallSocket() {
//     return _singleton;
//   }
//   //In java
//   // static Storage getInstance() {
//   //   return _singleton;
//   // }
//   CallSocket._internal();
//   //END OF SINGLETON

//   Future<void> initialize() async {
//     try {
//       _channel = IOWebSocketChannel.connect(
//           Uri.parse('wss://193.186.32.188:8086/websocket')); //8080
//       _controller = StreamController<dynamic>.broadcast();
//       _channel.stream.listen((event) {
//         _controller.sink.add(event);
//       });
//       initialized = true;
//     } catch (e) {
//       initialized = false;
//       rethrow;
//     }
//   }

//   Future<void> dispose() async {
//     _channel.sink.close();
//     _controller.close();
//   }

//   WebSocketSink get sink => _channel.sink;

//   Stream<dynamic> get stream => _controller.stream;
// }
