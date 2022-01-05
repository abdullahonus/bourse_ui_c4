import 'package:bourse_ui_c4/screens/login_page.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey[850],
      body: ListView(
        children: [
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: SizedBox(
                width: sizeWidth * 1,
                child: const Text(
                  "Manage Accounts",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              )),
          const Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: SizedBox(
                width: sizeWidth * 1,
                child: const Text(
                  "Tax Documents ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              )),
          const Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: SizedBox(
                width: sizeWidth * 1,
                child: const Text(
                  "Password Code and Touch_ID",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              )),
          const Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: SizedBox(
                width: sizeWidth * 1,
                child: const Text(
                  "Notification",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              )),
          const Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: SizedBox(
                width: sizeWidth * 1,
                child: const Text(
                  "Personal Information",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              )),
        const  Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: SizedBox(
                width: sizeWidth * 1,
                child: const Text(
                  "Find ATM",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              )),
          const Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {},
              child: SizedBox(
                width: sizeWidth * 1,
                child: const Text(
                  "Help",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.start,
                ),
              )),
          const Divider(),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, elevation: 0),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ));
              },
              child: Container(
                padding: const EdgeInsets.all(100),
                width: sizeWidth * 1,
                child: const Text(
                  "Log Out",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
                  textAlign: TextAlign.center,
                ),
              )),
          const Divider(),
        ],
      ),
    ));
  }
}
