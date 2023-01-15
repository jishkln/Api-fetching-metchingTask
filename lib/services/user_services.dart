import 'dart:developer';

import 'package:dio/dio.dart';

import 'package:sample/helper/entpoints.dart';
import 'package:sample/model/user_model.dart';

class DataServices {
  static final Dio dio = Dio();

  static Future<DataModel?> getData() async {
    try {
      Response response = await dio.get(EndPoints.endpoints);
      if (response.statusCode == 200 || response.statusCode == 201) {
        var data = DataModel.fromJson(response.data);

        return data;
      }
    } catch (e) {
      log('message');
      log(e.toString());
    }
    return null;
  }
}
