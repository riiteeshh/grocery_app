import 'package:flutter/material.dart';
import 'package:grocery_app/components/profile_list_tiles.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.05),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout_rounded,
                color: Colors.red,
              ))
        ],
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.11,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.greenAccent.withOpacity(0.2)),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                        CircleAvatar(
                          radius: 35,
                          backgroundColor: Colors.blue,
                          child: ClipOval(
                            child: Image.network(
                              'https://thenational-the-national-prod.cdn.arcpublishing.com/resizer/T9oqBxXFt7c55kc8lOmHHKLBHlg=/800x0/filters:format(jpg):quality(70)/cloudfront-eu-central-1.images.arcpublishing.com/thenational/VBNNUCG3YUTHC3WQNEW5UXQ2GQ.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                          //Icon(Icons.person_2_rounded),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.05,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Ritesh Pandey',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('+977 9865762048',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.normal))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.qr_code_2_rounded,
                          size: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.greenAccent.withOpacity(0.2)),
              child: Column(
                children: <Widget>[
                  ProfileListTile(
                      title: 'Your Information',
                      subtitle: 'Edit/Update your information.',
                      leading: Icons.person_2_rounded),
                  ProfileListTile(
                      title: 'Your Purchases',
                      subtitle: 'View your all purchase history.',
                      leading: Icons.receipt_long_rounded),
                  ProfileListTile(
                      title: 'To ship/recieve',
                      subtitle: 'See the items to be shipped or recieved.',
                      leading: Icons.trolley),
                  ProfileListTile(
                      title: 'Contact Us',
                      subtitle: 'Contact us for any help.',
                      leading: Icons.call),
                ],
              ))
        ],
      ),
    );
  }
}
