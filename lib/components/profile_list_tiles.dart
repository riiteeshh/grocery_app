import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  String title, subtitle;
  IconData leading;
  ProfileListTile(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.leading});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(
            leading,
            color: Colors.black,
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 0.5,
        )
      ],
    );
  }
}
