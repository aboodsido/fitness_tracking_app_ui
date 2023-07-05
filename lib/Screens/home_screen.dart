import 'package:flutter/material.dart';

import '../Widgets/bottom_navigation_bar.dart';
import '../Widgets/main_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Popular', 'Moderate', 'Intensive'];

    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        drawer: const MainDrawer(),
        appBar: customAppBar(),
        body: ListView(
          padding: const EdgeInsets.only(left: 35, top: 40),
          children: [
            const Text(
              'Find your',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w300,
              ),
            ),
            const Text(
              'activity',
              style: TextStyle(
                color: Colors.black,
                fontSize: 50,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 20),
            TabBar(
              labelPadding: const EdgeInsets.only(right: 25),
              labelColor: Colors.black,
              isScrollable: true,
              indicatorColor: Colors.black,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.black.withOpacity(0.5),
              tabs: tabs
                  .map(
                    (tab) => Tab(
                      icon: Text(
                        tab,
                        style: const TextStyle(
                          fontSize: 18,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(right: 35),
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                children: tabs
                    .map(
                      (tab) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {},
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: 150,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/Rectangle4.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Text(
                                            'Swimming',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 18,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Image.asset(
                                                  'assets/images/fireIcon.png'),
                                              const SizedBox(
                                                width: 8,
                                              ),
                                              const Text(
                                                '430Kcal/hr',
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 13,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavBar(index: 0),
      ),
    );
  }

  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  AppBar customAppBar() {
    return AppBar(
      leading: Container(),
      actions: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            right: 20,
          ),
          child: Builder(
            builder: (ctx) {
              return IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => openDrawer(ctx));
            },
          ),
        ),
      ],
      iconTheme: const IconThemeData(color: Colors.black, size: 35),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
