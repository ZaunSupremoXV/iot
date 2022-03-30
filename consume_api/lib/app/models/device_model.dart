import 'dart:convert';

class DeviceModel {
  int? channel;
  String? state;
  String? status;

  DeviceModel({
    this.channel,
    this.state,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'channel': channel,
      'state': state,
      'status': status,
    };
  }

  factory DeviceModel.fromMap(Map<String, dynamic> map) {
    return DeviceModel(
      channel: map['channel'],
      state: map['state'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DeviceModel.fromJson(String source) =>
      DeviceModel.fromMap(json.decode(source));
}
