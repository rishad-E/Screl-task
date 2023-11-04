import 'package:flutter/material.dart';
import 'package:screltask/model/model.dart';
import 'package:screltask/service/service.dart';

class UserProvider with ChangeNotifier {
  List<ResponseModel>? allUsers;

  Future getdetailsProvider() async {
    await GetUserDetailsService().getDetails().then((value) => {
      allUsers = value
      
    });
  }
}
