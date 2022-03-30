import 'package:consume_api/app/models/device_model.dart';

import '../interfaces/client_http_interface.dart';
import 'device_repository_interface.dart';

class ApiRepository implements IApi {
  final IClientHttp client;

  ApiRepository(this.client);

  @override
  Future<DeviceModel> setState(String state) async {
    var json = await client.get('http://localhost:3000/device/${state}');
    DeviceModel model = DeviceModel.fromMap(json);
    return model;
  }

  @override
  Future<DeviceModel> getState() async {
    var json = await client.get('http://localhost:3000/device_state');
    DeviceModel model = DeviceModel.fromMap(json);
    return model;
  }
}
