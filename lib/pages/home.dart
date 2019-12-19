import 'package:flutter/material.dart';
import 'package:notify/pages/dashboard.dart';
import 'package:notify/pages/notifications.dart';
import 'package:notify/pages/student_profile.dart';

class HomePage extends StatelessWidget {

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'notify',
        theme: ThemeData(
          primarySwatch: Colors.pink
        ),
        home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Appbar"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.home)),
                  Tab(icon: Icon(Icons.notifications)),
                  Tab(icon: Icon(Icons.person)),
                ],
              )
            ),
            body: TabBarView(
              children: <Widget>[
                Dashboard(),
                NotifPage(),
                ProfilePage(),
              ],
            )
          )
        )
      );
    }
}