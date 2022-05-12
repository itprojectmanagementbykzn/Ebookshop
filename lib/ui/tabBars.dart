// ignore_for_file: prefer_final_fields, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/library.dart';
import 'package:zar_ni_bwar_ui/widgets/pageItem.dart';

class TabBars extends StatefulWidget {
  const TabBars({Key? key}) : super(key: key);

  @override
  _TabBarsState createState() => _TabBarsState();
}

class _TabBarsState extends State<TabBars> {
  final int pageCount = 3;
  List<String> tabsName = [
    'အုပ်စု ( ၁ )',
    'အုပ်စု ( ၂ )',
    'အုပ်စု ( ၃ )',
  ];
  final PageController _controller = PageController();

  CustomTabBarController _tabBarController = CustomTabBarController();

  @override
  void initState() {
    super.initState();
  }

  Widget getTabbarChild(BuildContext context, int index) {
    return TabBarItem(
      index: index,
      transform: ScaleTransform(
        maxScale: 1.5,
        transform: ColorsTransform(
          normalColor: Colors.black38,
          highlightColor: Colors.black,
          builder: (context, color) {
            return Container(
              alignment: Alignment.center,
              width: 100,
              child: Text(
                tabsName[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          CustomTabBar(
            tabBarController: _tabBarController,
            height: 40,
            itemCount: pageCount,
            builder: getTabbarChild,
            indicator: StandardIndicator(
              width: 60,
              height: 3,
              color: Colors.blue,
            ),
            pageController: _controller,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              itemCount: pageCount,
              itemBuilder: (context, index) {
                return PageItem(index);
              },
            ),
          )
        ],
      ),
    );
  }
}
