import 'package:flutter/material.dart';
import 'package:myapp/theme.dart';

var myAppBar = AppBar(
  title: const Text('MyApp'),
  actions: [
    IconButton(
        icon: const Icon(Icons.brightness_4_rounded),
        onPressed: () {
          currentTheme.toggleTheme();
        })
  ],
);
var myDrawer = Drawer(
  child: Column(children: const [
    UserAccountsDrawerHeader(
      currentAccountPicture: CircleAvatar(
          // backgroundImage: AssetImage("assets/images/user.png"),
          ),
      accountName: Text("User Name"),
      accountEmail: Text("Email"),
    ),
    ListTile(
      leading: Icon(Icons.home),
      title: Text("H O M E"),
    ),
    ListTile(
      leading: Icon(Icons.chat),
      title: Text("C H A T"),
    ),
    ListTile(
      leading: Icon(Icons.favorite),
      title: Text("F A V O R I T E"),
    ),
  ]),
);
