import 'package:flutter/material.dart';
import 'package:flutter3/about.dart';
import 'package:flutter3/profile.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // routes: {
      //   "/": (context) => const HomePage(),
      //   "/profile": (context) => const Profile(),
      // },
      // initialRoute: "/",
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.green,
        // colorSchemeSeed: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navigationIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 255,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("LOGIN"),
                  ),
                ),
                Container(
                  color: Colors.red,
                  height: 200,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 95, horizontal: 25),
                  child: Text("A"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 95, horizontal: 25),
                  child: Text("A"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 95, horizontal: 25),
                  child: Text("A"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 95, horizontal: 25),
                  child: Text("A"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 95, horizontal: 25),
                  child: Text("A"),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 95, horizontal: 25),
                  child: Text("A"),
                ),
              ],
            ),
          ),
        ),
      ),
      // Align(
      //   alignment: Alignment.center,
      //   child: ElevatedButton(
      //     onPressed: () {
      //       Navigator.of(context).push(MaterialPageRoute(builder: (context) => const About()));
      //     },
      //     child: Text("PENGATURAN AKUN"),
      //   ),
      // ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.white,
        selectedIndex: navigationIndex,
        onDestinationSelected: (currentIndex) {
          setState(() {
            navigationIndex = currentIndex;
          });
        },
        destinations: const [
          NavigationDestination(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          NavigationDestination(
            label: "Categories",
            icon: Icon(Icons.category),
          ),
          NavigationDestination(
            label: "Profile",
            icon: Icon(Icons.person_outlined),
          ),
        ],
      ),
    );
  }
}
