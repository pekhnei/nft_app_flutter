import 'package:flutter/material.dart';
import 'package:nft_app_flutter/components/my_bottombar.dart';
import 'package:nft_app_flutter/tabs/recent_tab.dart';
import 'package:nft_app_flutter/tabs/top_bar.dart';
import 'package:nft_app_flutter/tabs/trending_tab.dart';
import 'package:nft_app_flutter/theme/glass_box.dart';

import '../components/my_appbar.dart';
import '../components/my_tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // search button tapped
  void _searchButtonTapped() {}

  // Our 3 tab option
  List tabOption = const [
    ["Recent", RecentTab()],
    ["Trendong", TrendingTab()],
    ["Top", TopBar()],
  ];

  // bottom bar navigation
  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottomIndex,
            onTap: _handleBottomIndexChange,
          ),
        ),
        body: ListView(
          children: [
            // title + search button
            MyAppBar(
              title: 'Explore Collections',
              onTap: _searchButtonTapped,
            ),

            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
