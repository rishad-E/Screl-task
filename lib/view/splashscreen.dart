import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screltask/controller/controller.dart';
import 'package:screltask/controller/splashcontroller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Provider.of<UserProvider>(context, listen: false).getdetailsProvider();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<SplashProvider>(context, listen: false).splashTimer(context);
    return Scaffold(
      body: Center(
          child: Container(
        height: 280,
        width: 250,
        // color: Colors.red,
        child: Column(
          children: [
            SizedBox(
              child: Image.asset("asset/person-removebg-preview.png",fit: BoxFit.fill,),
            ),
            const Text("Welcome")
          ],
        ),
      )),
    );
  }
}
