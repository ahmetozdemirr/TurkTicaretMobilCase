import 'package:flutter/material.dart';
import 'package:turk_ticaret_case_application/screens/home_page.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            color: Color(0xffefe0), //.fromARGB(255, 239, 224, 1),
            child: Container(
              width: 428,
              height: 82,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50))),
              child: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.red,
                  padding: EdgeInsets.zero,
                  onTap: (value) {},
                  tabs: [
                    TabIcon(iconName: Icons.home),
                    TabIcon(iconName: Icons.shopping_bag_sharp),
                    TabIcon(iconName: Icons.location_on_sharp),
                    TabIcon(iconName: Icons.favorite),
                    TabIcon(iconName: Icons.person),
                  ]),
            ),
          ),
          body: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                //HomePageView(),
                HomePageView(),
                Container(
                  color: Colors.amber,
                ),
                Container(color: Colors.pink),
                Container(
                  color: Colors.black38,
                ),
                Container(
                  color: Colors.lightBlue,
                ),
              ]),
        ));
  }
}

class TabIcon extends StatelessWidget {
  const TabIcon({
    Key? key,
    required this.iconName,
  }) : super(key: key);
  final IconData iconName;
  @override
  Widget build(BuildContext context) {
    return Tab(
      icon: Icon(
        iconName,
        color: Color.fromARGB(157, 157, 157, 1),
      ),
    );
  }
}
