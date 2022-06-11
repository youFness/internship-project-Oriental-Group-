// THIS CODE FOR THE BAR TO BE ON TOP

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_projetstage/screens/favorite_screen.dart';
// import 'package:flutter_projetstage/widgets/home/home_body.dart';

// class TabsScreen extends StatelessWidget {
//   const TabsScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//
//     // return DefaultTabController(
//     //   length: 2,
//     //   child: Scaffold(
//     //     appBar: AppBar(
//     //       title: Text('hdhdhhdhhd'),
//     //       bottom: TabBar(
//     //         tabs: [
//     //           Tab(
//     //             icon: Icon(Icons.dashboard),
//     //             text: 'type',
//     //           ),
//     //           Tab(
//     //             icon: Icon(Icons.star),
//     //             text: 'favorie',
//     //           ),
//     //         ],
//     //       ),
//     //     ),
//     //     body: TabBarView(children: [
//     //       HomeBody(),
//     //       FavoriteScreen(),
//     //     ]),
//     //   ),
//     // );

//   }
// }

// THIS CODE FOR THE BAR TO BE DOWN
import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/drawer.dart';
import '../models/products.dart';
import '../screens/categories_screen.dart';
import '../screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  final List<Product> favoriteProducts;

  const TabsScreen(this.favoriteProducts);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  // the underscore _ to make the methode private and to not use it in another page
  void _selectScreen(int index) {
    // to use setState widget u shoudl already be working with statefullwidget
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;
// Object when we dont know the type the incoming value
  late List<Map<String, Object>> _screens;
  @override
  void initState() {
    _screens = [
      {
        'Screen': CategoriesScreens(),
        'Title': 'Produit',
      },
      {
        'Screen': FavoriteScreen(widget.favoriteProducts),
        'Title': 'Favorie',
      },
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // i added the as string bcs it didnt accept the type object
        title: Text(_screens[_selectedScreenIndex]['Title'] as String),
      ),
      drawer: AppDrawer(),
      // i added the as Widget bcs it didnt accept the type object

      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Colors.green,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black,
        // so can the icon color changes if we tap  on it
        currentIndex: _selectedScreenIndex,
        // item property do the same job as the tabs in the statelesswidget
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.dashboard,
              ),
              label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: 'Favorie'),
        ],
      ),
    );
  }
}
