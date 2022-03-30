import 'package:consume_api/app/models/device_model.dart';

abstract class IApi {
  Future<DeviceModel> setState(String state);
  Future<DeviceModel> getState();
}
