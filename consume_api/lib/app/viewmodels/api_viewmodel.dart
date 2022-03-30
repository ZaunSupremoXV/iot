import 'package:consume_api/app/models/device_model.dart';
import 'package:flutter/foundation.dart';

import '../repositories/device_repository_interface.dart';

class ApiViewModel {
  final IApi repository;

  final deviceModel = ValueNotifier<DeviceModel?>(null);

  ApiViewModel(this.repository);

  setState(String state) async {
    try {
      deviceModel.value = await repository.setState(state);
    } catch (e) {
      return (e);
    }
  }

  getState() async {
    try {
      deviceModel.value = await repository.getState();
    } catch (e) {
      return (e);
    }
  }
}
