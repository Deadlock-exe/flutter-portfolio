import 'package:flutter/material.dart';
import 'package:portfolio/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      surfaceTintColor: Colors.transparent,
      shadowColor: Theme.of(context).colorScheme.primary,
      shape: const ContinuousRectangleBorder(),
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          DrawerHeader(
            margin: const EdgeInsetsDirectional.only(bottom: 25),
            child: Icon(
              Icons.person,
              color: Theme.of(context).colorScheme.secondary,
              size: 120,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              "DASHBOARD",
              style: TextStyle(
                letterSpacing: 4,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.chat,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              "MESSAGE",
              style: TextStyle(
                letterSpacing: 4,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              "SETTINGS",
              style: TextStyle(
                letterSpacing: 4,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Theme.of(context).colorScheme.secondary,
            ),
            title: Text(
              "LOGOUT",
              style: TextStyle(
                letterSpacing: 4,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Text(
                  "Change theme",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Switch(
                  activeColor: Theme.of(context).colorScheme.secondary,
                  focusColor: Theme.of(context).colorScheme.secondary,
                  value: isSwitched,
                  onChanged: (value) {
                    Provider.of<ThemeProvider>(
                      context,
                      listen: false,
                    ).toggleTheme();
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
