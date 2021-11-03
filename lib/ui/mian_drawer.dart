import 'package:flutter/material.dart';
import 'package:temaribet/ui/login.dart';

import 'main_header_drawer.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  var currentPage = DrawerSections.dashboard;
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              MyHeaderDrawer(),
              MyDrawerList(),
            ],
          ),
        ),
      ),
      // child: Center(
      //   child: Padding(
      //     padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //         Container(
      //           width: MediaQuery.of(context).size.width,
      //           alignment: Alignment.bottomCenter,
      //           child: Column(
      //             crossAxisAlignment: CrossAxisAlignment.center,
      //             children: [
      //               SizedBox(
      //                 height: 40,
      //               ),
      //               Image.asset("assets/images/logo.png"),
      //               SizedBox(
      //                 height: 50,
      //               ),
      //               Row(
      //                 children: [
      //                   Icon(Icons.home),
      //                   Text('Home'),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               Row(
      //                 children: [
      //                   Icon(Icons.person),
      //                   Text('Profile'),
      //                 ],
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               GestureDetector(
      //                 onTap: () =>
      //                     Navigator.pushNamed(context, LoginPage.RouteName),
      //                 child: Row(
      //                   children: [
      //                     Icon(Icons.settings),
      //                     Text('Settings'),
      //                   ],
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 20,
      //               ),
      //               Row(
      //                 children: [
      //                   Icon(Icons.info),
      //                   Text('About'),
      //                 ],
      //               ),
      //             ],
      //           ),
      //         ),
      //         Text('version 1.01')
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  Widget MyDrawerList() {
    return Container(
      padding: EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        // shows the list of menu drawer
        children: [
          menuItem(1, "Home", Icons.dashboard_outlined,
              currentPage == DrawerSections.dashboard ? true : false),
          menuItem(2, "Contacts", Icons.people_alt_outlined,
              currentPage == DrawerSections.contacts ? true : false),
          menuItem(3, "Events", Icons.event,
              currentPage == DrawerSections.events ? true : false),
          menuItem(4, "Notes", Icons.notes,
              currentPage == DrawerSections.notes ? true : false),
          Divider(),
          menuItem(5, "Settings", Icons.settings_outlined,
              currentPage == DrawerSections.settings ? true : false),
          menuItem(6, "Notifications", Icons.notifications_outlined,
              currentPage == DrawerSections.notifications ? true : false),
          Divider(),
          menuItem(7, "Privacy policy", Icons.privacy_tip_outlined,
              currentPage == DrawerSections.privacy_policy ? true : false),
          menuItem(8, "Send feedback", Icons.feedback_outlined,
              currentPage == DrawerSections.send_feedback ? true : false),
        ],
      ),
    );
  }

  Widget menuItem(int id, String title, IconData icon, bool selected) {
    return Material(
      color: selected ? Colors.grey[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          setState(() {
            if (id == 1) {
              currentPage = DrawerSections.dashboard;
            } else if (id == 2) {
              currentPage = DrawerSections.contacts;
            } else if (id == 3) {
              currentPage = DrawerSections.events;
            } else if (id == 4) {
              currentPage = DrawerSections.notes;
            } else if (id == 5) {
              currentPage = DrawerSections.settings;
            } else if (id == 6) {
              currentPage = DrawerSections.notifications;
            } else if (id == 7) {
              currentPage = DrawerSections.privacy_policy;
            } else if (id == 8) {
              currentPage = DrawerSections.send_feedback;
            }
          });
        },
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum DrawerSections {
  dashboard,
  contacts,
  events,
  notes,
  settings,
  notifications,
  privacy_policy,
  send_feedback,
}
