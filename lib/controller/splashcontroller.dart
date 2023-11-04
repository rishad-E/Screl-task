import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screltask/controller/controller.dart';
import 'package:screltask/view/homescreen.dart';

class SplashProvider with ChangeNotifier {
  splashTimer(BuildContext context) async {
    Timer(const Duration(seconds: 3), () {
      Provider.of<UserProvider>(context, listen: false).getdetailsProvider();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ));
    });
  }
}
