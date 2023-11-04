import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:screltask/controller/controller.dart';
import 'package:screltask/utils/widget.dart';
import 'package:screltask/view/detailscreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 70,
        title: const Text("User List",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Consumer<UserProvider>(
          builder: (context, value, child) {
            return ListView.builder(
              itemBuilder: (context, index) {
                final data = value.allUsers![index];
                return userTile(
                  context,
                  value.allUsers![index].name.toString(),
                  value.allUsers![index].address!.street.toString(),
                  onTap: () {
                    log("message");
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              name: data.name.toString(),
                              uname: data.username.toString(),
                              phone: data.phone.toString(),
                              email: data.email.toString(),
                              city: data.address!.city.toString(),
                              street: data.address!.street.toString(),
                              cname: data.company!.name.toString(),
                              catchphrese: data.company!.catchPhrase.toString(),
                            )));
                  },
                );
              },
              itemCount: value.allUsers?.length,
            );
          },
        ),
      ),
    );
  }
}
