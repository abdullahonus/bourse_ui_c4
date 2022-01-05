import 'package:bourse_ui_c4/screens/tabs/accounts.dart';
import 'package:bourse_ui_c4/screens/tabs/bill.dart';
import 'package:bourse_ui_c4/screens/tabs/budgets.dart';
import 'package:bourse_ui_c4/screens/tabs/genel_bakis.dart';
import 'package:bourse_ui_c4/screens/tabs/settings.dart';
import 'package:flutter/material.dart';

import 'package:shifting_tabbar/shifting_tabbar.dart';

class StockPage extends StatefulWidget {
  const StockPage({Key? key}) : super(key: key);

  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
////////////////////////////////////////////
///follor For more ig: @Countrol4offical
///@countrolfour@gmail.com
////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    final pages = [
      GenelBakis(),
      const StocksPage(),
      const Bill(),
      const BudgetsPage(),
      const SettingsPage()
    ];
    TabController? _controller;
    return SafeArea(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return DefaultTabController(
              length: 5,
              child: Scaffold(
                backgroundColor: Colors.grey[850],
                appBar: ShiftingTabBar(
                  labelFlex: 2,
                  labelStyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                  color: Colors.grey[850],
                  tabs: <ShiftingTab>[
                    ShiftingTab(
                      icon: const Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'Genel Bakış',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.attach_money,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'Hesaplar',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.money_off_rounded,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'Faturalar',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.money,
                        color: Colors.white,
                        size: 25,
                      ),
                      text: 'Bütçeler',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'Ayarlar',
                    ),
                  ],
                ),
                body: TabBarView(controller: _controller, children: pages),
              ));
        },
      ),
    );
  }
}
