import 'package:sample/model/user_model.dart';
import 'package:sample/services/sr.dart';

class Cntrol {
  static final Cntrol _cntrol = Cntrol._internal();

  factory Cntrol() {
    return _cntrol;
  }

  Cntrol._internal();
  bool isLoading = false;
  List<Hit> hitList = [];
  getResult() async {
    final DataModel? result = await Sr.getData();
    if (result != null) {
      hitList.clear();
      hitList.addAll(result.hits!);
    }
  }
}
