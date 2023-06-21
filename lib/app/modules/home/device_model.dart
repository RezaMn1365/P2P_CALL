class Device {
  String? serial;
  String? localId;
  String? secret;
  String? deviceId;

  Device({this.serial, this.localId, this.secret, this.deviceId});

  Device.fromJson(Map<String, dynamic> json) {
    serial = json['serial'];
    localId = json['local_id'];
    secret = json['secret'];
    deviceId = json['device_id'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['serial'] = serial;
    data['local_id'] = localId;
    data['secret'] = secret;
    data['device_id'] = deviceId;
    return data;
  }
}
