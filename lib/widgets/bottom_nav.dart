import 'package:bts_alert/widgets/speech.dart';
import 'package:flutter/material.dart';
import 'package:bts_alert/repo/repository.dart';
import 'package:bts_alert/utils/iconly/iconly_bold.dart';
import 'package:bts_alert/utils/styles.dart';
import 'package:bts_alert/views/home.dart';
import 'package:bts_alert/views/profile.dart';

/// This is the stateful widget that the main application instantiates.
class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    const SpeechSampleApp() /*Home()*/,
    const Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Repository.navbarColor(context),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(fontSize: 20, color: Styles.primaryColor),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Repository.selectedItemColor(context),
        unselectedItemColor: Colors.grey.withOpacity(0.7),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.Home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(IconlyBold.Profile),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
