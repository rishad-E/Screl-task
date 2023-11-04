import 'package:flutter/material.dart';
import 'package:screltask/constants/const.dart';

Widget userTile(BuildContext context, String name, String country,
    {Function()? onTap}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 10),
      padding: const EdgeInsets.only(left: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 2),
          BoxShadow(
            color: Colors.white,
          ),
        ],
      ),
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        children: [
          const Icon(
            Icons.person,
            size: 50,
          ),
          const SizedBox(width: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              Text(country)
            ],
          )
        ],
      ),
    ),
  );
}

Widget detailContainer(
    BuildContext context,
    String uname,
    String name,
    String email,
    String phone,
    String city,
    String street,
    String cname,
    String catchp) {
  return Container(
    margin: const EdgeInsets.fromLTRB(15, 15, 15, 10),
    padding: const EdgeInsets.fromLTRB(15, 20, 0, 5),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 2),
        BoxShadow(
          color: Colors.white,
        ),
      ],
    ),
    height: MediaQuery.of(context).size.height * 0.5,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.25,
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset("asset/person-removebg-preview.png"),
            ),
            w,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                decorText("Name: $name"),
                h,
                decorText('UserName: $uname'),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            decorText("Email: $email"),
            h,
            decorText("Phone: $phone"),
          ],
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                decorText("City: $city"),
                h,
                decorText("Street: $street"),
              ],
            ),
            w,
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            decorText("Comany Name: $cname"),
            h,
            decorText(catchp),
          ],
        ),
      ],
    ),
  );
}

Text decorText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    overflow: TextOverflow.clip,
  );
}
