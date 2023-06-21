import 'package:get/get.dart';

import 'package:basir_core_sdk/basir_core_sdk.dart';

class RemoteSourceBindings implements Bindings {
  @override
  void dependencies() {
    Get.put<BasirCore>(
      BasirCore(),
      tag: (BasirCore).toString(),
      permanent: true,
    );
  }
}
