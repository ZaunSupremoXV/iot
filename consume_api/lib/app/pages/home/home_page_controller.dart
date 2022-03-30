import 'package:consume_api/app/models/device_model.dart';
import 'package:flutter/cupertino.dart';
import '../../viewmodels/api_viewmodel.dart';

class HomeController {
  final ApiViewModel apiViewModel;

  HomeController(this.apiViewModel);

  ValueNotifier<DeviceModel?> get findAll => apiViewModel.deviceModel;

  getSetState(String state) {
    apiViewModel.setState(state);
  }

  getGetState() {
    apiViewModel.getState();
  }
}
