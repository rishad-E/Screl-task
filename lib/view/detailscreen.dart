import 'package:flutter/material.dart';
import 'package:screltask/utils/widget.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    super.key,
    required this.name,
    required this.uname,
    required this.email,
    required this.phone,
    required this.city,
    required this.street,
    required this.cname,
    required this.catchphrese,
  });

  final String name;
  final String uname;
  final String email;
  final String phone;
  final String city;
  final String street;
  final String cname;
  final String catchphrese;

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      appBar: AppBar(
          // automaticallyImplyLeading: false,
          ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return detailContainer(context, uname, email, name, phone,
              city, street,cname, catchphrese);
        },
        itemCount: 5,
      ),
    );
  }
}
