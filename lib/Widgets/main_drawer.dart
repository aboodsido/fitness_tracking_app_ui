import 'package:fitness_tracking_app/Screens/analytics_screen.dart';
import 'package:fitness_tracking_app/Screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 266,
      backgroundColor: Colors.black,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 24),
        child: Column(
          children: [
            drawerHeader(context),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                children: [
                  searchWidget(),
                  const SizedBox(height: 40),
                  buildListTile(
                    icon: Icons.home_outlined,
                    onTap: () {Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );},
                    title: 'Dashboard',
                  ),
                  const SizedBox(height: 20),
                  buildListTile(
                    title: 'Revenue',
                    icon: Icons.analytics_outlined,
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  buildListTile(
                    title: 'Notification',
                    icon: Icons.notifications_none_outlined,
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  buildListTile(
                    icon: Icons.pie_chart_outline,
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AnalyticsScreen(),
                        ),
                      );
                    },
                    title: 'Analytics',
                  ),
                  const SizedBox(height: 20),
                  buildListTile(
                    title: 'Inventory',
                    icon: Icons.inventory_2_outlined,
                    onTap: () {},
                  ),
                  const SizedBox(height: 29),
                  buildListTile(
                    title: 'Language',
                    icon: Icons.language,
                    onTap: () {},
                  ),
                  const SizedBox(height: 40),
                  buildListTile(
                    title: 'Logout',
                    icon: Icons.logout_outlined,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextFormField searchWidget() {
    return TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    hintStyle: const TextStyle(
                      color: Color(0xFFEFEFEF),
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                    fillColor: const Color(0xFF1F1F22),
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Color(0xffC8BCF6),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                );
  }

  ListTile buildListTile({
    required VoidCallback onTap,
    required IconData icon,
    required String title,
  }) {
    return ListTile(
      horizontalTitleGap: 10,
      onTap: onTap,
      leading: Icon(
        icon,
        color: const Color(0xffC8BCF6),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFEFEFEF),
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }

  Row drawerHeader(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 56,
          height: 56,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset('assets/images/person.png'),
          ),
        ),
        const SizedBox(width: 12),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Abdullah AboSido',
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: Color(0xFFEFEFEF),
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'odod41907@gmail.com',
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: TextStyle(
                  color: Color(0xFFC0BFBD),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
