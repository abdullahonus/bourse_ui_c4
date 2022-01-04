import 'package:bourse_ui_c4/screens/tabs/settings.dart';
import 'package:flutter/material.dart';

import 'screens/login_page.dart';
import 'screens/stock_page.dart';
import 'screens/tabs/Accounts.dart';
import 'screens/tabs/asd.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: StockPage());
  }
}
