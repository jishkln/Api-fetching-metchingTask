import 'dart:developer';

import 'package:sample/model/user_model.dart';
import 'package:sample/services/user_services.dart';

class UserController {
  bool isLOading = false;
  List<Hit> datamdlList = [];
  getResult() async {
    final DataModel? result = await DataServices.getData();
    if (result != null) {
      datamdlList.clear();
      datamdlList.addAll(result.hits!);
      log('${datamdlList[0].createdAt}');
    }
    log(datamdlList.length.toString());
  }
}
