import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:screltask/model/model.dart';

class GetUserDetailsService {
  Dio dio = Dio();
  String baseUrl = 'https://jsonplaceholder.typicode.com/users';

  Future<List<ResponseModel>?> getDetails() async {
    try {
      Response response = await dio.get(baseUrl);

      if (response.statusCode == 200) {
        final data = response.data;
        List<ResponseModel> result = List<ResponseModel>.from(
            data.map((x) => ResponseModel.fromJson(x)));
        log(result.toString());
        return result;
      }
    } catch (e) {
      log(e.toString(), name: 'errorservice');
    }
    return null;
  }
}
