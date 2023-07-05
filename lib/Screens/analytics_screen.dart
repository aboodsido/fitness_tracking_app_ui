import 'package:flutter/material.dart';


import '../Widgets/bottom_navigation_bar.dart';
import '../Widgets/main_drawer.dart';
import '../Widgets/vertical_bar.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  void openDrawer(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    List<String> tabs = [
      'April',
      'May',
      'June',
      'July',
      'August',
      'Septemper',
      'October',
      'November',
      'December',
    ];

    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        drawer: const MainDrawer(),
        appBar: customAppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 36, top: 36),
              child: Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(
                      child: ClipOval(
                        child: Image.asset('assets/images/person.png'),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Abdullah AboSido',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Palestine',
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black.withOpacity(0.5),
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TabBar(
                labelPadding: const EdgeInsets.symmetric(horizontal: 15),
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
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SizedBox(height: 26),
            SizedBox(
              width: double.infinity,
              height: 460,
              child: TabBarView(
                children: tabs
                    .map(
                      (tab) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Statistics',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {

                                  },
                                  child: Container(
                                    width: 90,
                                    height: 40,
                                    padding: const EdgeInsets.all(10),
                                    decoration: ShapeDecoration(
                                      color: const Color(0x33C4C4C4),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Week',
                                          style: TextStyle(
                                            color:
                                                Colors.black.withOpacity(0.5),
                                            fontSize: 12,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        const SizedBox(width: 10),
                                        Icon(
                                          Icons.arrow_drop_down,
                                          size: 20,
                                          color: Colors.black.withOpacity(0.5),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            margin: const EdgeInsets.only(right: 30, left: 40),
                            child: Row(
                              children: [
                                VerticalBarWidget(activeHight: 77, title: 'S',activeColor: Colors.blue),
                                const SizedBox(width: 40),
                                VerticalBarWidget(activeHight: 100, title: 'M',activeColor: Colors.orange),
                                const SizedBox(width: 40),
                                VerticalBarWidget(activeHight: 50, title: 'T',activeColor: Colors.purple),
                                const SizedBox(width: 40),
                                VerticalBarWidget(activeHight: 140, title: 'W',activeColor: Colors.blue),
                                const SizedBox(width: 40),
                                VerticalBarWidget(activeHight: 99, title: 'T',activeColor: Colors.purple),
                                const SizedBox(width: 40),
                                VerticalBarWidget(activeHight: 88, title: 'F',activeColor: Colors.orange),
                                const SizedBox(width: 40),
                                VerticalBarWidget(activeHight: 20, title: 'S',activeColor: Colors.orange),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavBar(index: 1),
      ),
    );
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
