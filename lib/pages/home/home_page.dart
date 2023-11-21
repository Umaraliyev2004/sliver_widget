import 'package:flutter/material.dart';
import 'package:sliver_widget/pages/other/sliver_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _currentIndex = 0;
  final _screen = [
    Container(
      color: Colors.amber.shade200,
      child: const Center(
        child: Text(
          "HOME",
          style: TextStyle(fontSize: 40),
        ),
      ),
    ),
    Container(
      color: Colors.blue.shade300,
      child: const Center(
        child: Text(
          "HOME",
          style: TextStyle(fontSize: 40),
        ),
      ),
    ),
    Container(
      color: Colors.red.shade100,
      child: const Center(
        child: Text(
          "HOME",
          style: TextStyle(fontSize: 40),
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("REGISTRATION"),
      // ),
      body: const SliverWidget(),
      // body: Row(
      //   children: [
      //     if (MediaQuery.of(context).size.width >= 640)
      //       NavigationRail(
      //         destinations: const [
      //           NavigationRailDestination(
      //             icon: Icon(Icons.home),
      //             label: Text("Home"),
      //           ),
      //           NavigationRailDestination(
      //             icon: Icon(Icons.person),
      //             label: Text("Profile"),
      //           ),
      //           NavigationRailDestination(
      //             icon: Icon(Icons.settings),
      //             label: Text("Setting"),
      //           ),
      //         ],
      //         selectedIndex: _currentIndex,
      //         onDestinationSelected: (value) {
      //           setState(() {
      //             _currentIndex = value;
      //           });
      //         },
      //       ),
      //     Expanded(child: _screen[_currentIndex]),
      //   ],
      // ),
      bottomNavigationBar: MediaQuery.of(context).size.width < 640
          ? BottomNavigationBar(
              unselectedItemColor: Colors.grey,
              selectedItemColor: Colors.indigoAccent,
              currentIndex: _currentIndex,
              onTap: (value) {
                setState(() {
                  _currentIndex = value;
                });
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: ("Home"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: ("Profile"),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: ("Setting"),
                ),
              ],
            )
          : null,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => const SliverWidget(),
      //       ),
      //     );
      //   },
      //   child: const Icon(Icons.turned_in),
      // ),
    );
  }
}
