import 'package:get/get.dart';

import '../controllers/insert_room_controller.dart';

class InsertRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<InsertRoomController>(
      InsertRoomController(),
      permanent: true,
    );
  }
}
