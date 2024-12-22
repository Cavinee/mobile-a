import 'package:flutter/material.dart';
import 'package:pertemuan6/model/user.dart';
import 'package:pertemuan6/pages/edit_profile.dart';
import 'package:pertemuan6/pages/profile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => User(),
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      initialRoute: '/drawnav',
      routes: {
        '/tabnav': (context) => const TabNav(),
        '/drawnav': (context) => const DrawerNav(),
        '/profile': (context) => const Profile(),
        '/edit': (context) => const EditProfile()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class TabNav extends StatelessWidget {
  const TabNav({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tab Navigation"),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.settings))
            ]
          )
        ),
        body: const TabBarView(
          children: [
            Profile(),
            EditProfile()
          ],
        )
      ),
    );
  }
}

class DrawerNav extends StatefulWidget {
  const DrawerNav({super.key});

  @override
  State<DrawerNav> createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  int selectedIndex = 0;

  List<Widget> widgets = [
    const Profile(),
    const EditProfile()
  ];

  void changeIndex(int index) {
    setState(() {
      selectedIndex = index;
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Navigation'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: widgets[selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.tealAccent),
              child: Text("Drawer Navigation"),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('My Profile'),
              onTap: () {
                changeIndex(0);
              }
            ),
            const Divider(height: 5.0),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Edit Profile"),
              onTap: () {
                changeIndex(1);
              }
            )
          ],
        )
      )
    );
  }
}