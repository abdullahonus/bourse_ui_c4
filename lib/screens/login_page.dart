
import 'package:bourse_ui_c4/screens/stock_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeheigh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey[850],
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                  height: sizeheigh * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/icon.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                SizedBox(
                  width: sizeWidth * 0.9,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    textAlign: TextAlign.start,
                    decoration: InputDecoration(
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      labelText: "Kullanıcı adı",
                      fillColor: Colors.grey.shade900,
                      filled: true,
                      hintStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                  width: sizeWidth * 0.9,
                  child: TextField(
                    style: const TextStyle(color: Colors.white),
                    cursorColor: Colors.white,
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade900,
                      filled: true,
                      labelStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),
                      labelText: "Şifre",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                IconButton(
                    iconSize: 100,
                    alignment: Alignment.center,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const StockPage(),
                      ));
                    },
                    icon: const Icon(
                      Icons.fingerprint,
                    ))
              ],
            ),
          )),
    );
  }
}
