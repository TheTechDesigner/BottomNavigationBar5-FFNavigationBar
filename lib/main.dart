import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'BottomNavigationBar';
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          barBackgroundColor: Color(0xFFFBE0E6),
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: Color(0xFFC41A3B),
          selectedItemIconColor: Color(0xFFFBE0E6),
          selectedItemLabelColor: Colors.black,
          selectedItemTextStyle: TextStyle(fontWeight: FontWeight.bold),
          showSelectedItemShadow: true,
          barHeight: 65.0
        ),
        items: [
          FFNavigationBarItem(
            iconData: Icons.home,
            label: 'Home',
            // selectedBackgroundColor: Colors.red,
          ),
          FFNavigationBarItem(
            iconData: Icons.category,
            label: 'Category',
            selectedBackgroundColor: Colors.green,
          ),
          FFNavigationBarItem(
            iconData: Icons.search,
            label: 'Search',
            selectedBackgroundColor: Colors.orange,
          ),
          FFNavigationBarItem(
            iconData: Icons.shopping_cart,
            label: 'Cart',
            selectedBackgroundColor: Colors.yellow,
          ),
          FFNavigationBarItem(
            iconData: Icons.person,
            label: 'Profile',
            selectedBackgroundColor: Colors.grey,
          ),
        ],
        selectedIndex: _selectedIndex,
        onSelectTab: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
