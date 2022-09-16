import 'package:flutter/material.dart';
import 'package:preferences_app_flutter/screens/screens.dart';

class SideMenu extends StatelessWidget {

  const SideMenu({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const _DrawerHeader(),
              ListTile(
                leading: const Icon(Icons.pages_outlined),
                title: const Text('Home'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, HomeScreen.routerName);
                },
              ),

              ListTile(
                leading: const Icon(Icons.people_alt_outlined),
                title: const Text('Peple'),
                onTap: () {
                },
              ),

              ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, SettingScreen.routerName);
                },
              ),
            ],
          ),

        ); //Scaffold
    }
}

class _DrawerHeader extends StatelessWidget {
  const _DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
        decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/menu-img.jpg'),
          fit: BoxFit.cover
        )
      ),
        child: Container(),
    );
  }
}