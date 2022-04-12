import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app03/pages/recipe_view.dart';
import 'app03/pages/recipe_list.dart';

class App03 extends StatefulWidget {
  const App03({Key? key}) : super(key: key);

  @override
  State<App03> createState() => _App03State();
}

class _App03State extends State<App03> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RecipeApp',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RecipeApp'),
        ),
        body: _selectedIndex == 0
            ? const ProviderScope(child: RecipeView())
            : RecipeList(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
