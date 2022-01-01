import 'package:flutter/material.dart';

import 'package:shifting_tabbar/shifting_tabbar.dart';

class StockPage extends StatefulWidget {
  StockPage({Key? key}) : super(key: key);

  @override
  _StockPageState createState() => _StockPageState();
}

class _StockPageState extends State<StockPage> {
  @override
  Widget build(BuildContext context) {
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
                      text: 'Genel \nBakış',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.directions_bike,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'Hesaplar',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.directions_car,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'Faturalar',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.directions_transit,
                        color: Colors.white,
                        size: 25,
                      ),
                      text: 'Bütçeler',
                    ),
                    ShiftingTab(
                      icon: const Icon(
                        Icons.directions_boat,
                        color: Colors.white,
                        size: 30,
                      ),
                      text: 'Ayarlar',
                    ),
                  ],
                ),
                // Other parts of the app are exacly same as default TabBar widget
                body: const TabBarView(
                  children: <Widget>[
                    Icon(
                      Icons.graphic_eq,
                    ),
                    Icon(Icons.directions_bike),
                    Icon(Icons.directions_car),
                    Icon(Icons.directions_transit),
                    Icon(Icons.directions_boat),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
