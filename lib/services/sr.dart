import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:sample/helper/entpoints.dart';
import 'package:sample/model/user_model.dart';

class Sr {
  static final Dio _dio = Dio();
  static Future<DataModel?> getData() async {
    try {
      final Response response = await _dio.get(EndPoints.endpoints);
      if (response.statusCode == 200 || response.statusCode == 201) {
        DataModel dataModel = DataModel.fromJson(response.data);
        return dataModel;
      }
    } catch (e) {
      log("message $e");
    }
    return null;
  }
}
