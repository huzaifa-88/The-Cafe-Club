import 'package:flutter/material.dart';
import 'package:food_application/pages/cart_page.dart';
import 'package:food_application/pages/favourite_page.dart';
import 'package:food_application/pages/item_menu_list.dart';
import 'package:food_application/pages/profile_page.dart';
import 'package:food_application/pages/search_page.dart';
// import 'package:food_application/pages/login_page.dart';

class HomePage extends StatefulWidget {
 const HomePage({Key? key}) : super(key: key);

 @override
 State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {

  int currentPage = 0;

  List<Widget> total_pages = const [ItemMenuList(), CartPage(), SearchPage(), FavouritePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      // body: SafeArea(
        // backgroundColor: Colors.white,
        // body: currentPage == 0 ? ItemMenuList() : CartPage(),   //This is not good approach and only for 2 pages
        body: IndexedStack(
          index: currentPage,
          children: total_pages
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedFontSize: 12,
          unselectedFontSize: 10,
          selectedItemColor: Colors.black,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          currentIndex: currentPage,
        items: const[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favourite'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile')
      ]),
    //  ),
      
    );
  }
}

// // import 'package:flutter/material.dart';

// // class HomePage extends StatefulWidget {
// //  const HomePage({Key? key}) : super(key: key);

// //  @override
// //  State<HomePage> createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //  @override
// //  Widget build(BuildContext context) {
// //    return Scaffold(
// //      appBar: AppBar(
// //        title: const Text('Home Page'),
       
// //      ),
// //      body: Center(
// //        child: Column(
// //          mainAxisAlignment: MainAxisAlignment.center,
// //          children: <Widget>[
// //            const Text(
// //              'Welcome to the Home Page!',
// //              style: TextStyle(fontSize: 20),
// //            ),
// //            ElevatedButton(
// //              onPressed: () {
// //                // Navigate to the next screen
// //              },
// //              child: const Text('Next Screen'),
// //            ),
// //          ],
// //        ),
// //      ),
// //    );
// //  }
// // }

// import 'package:flutter/material.dart';

// class BottomNavigationBarWidget extends StatefulWidget {
//  const BottomNavigationBarWidget({Key? key}) : super(key: key);

//  @override
//  State<BottomNavigationBarWidget> createState() => _BottomNavigationBarWidgetState();
// }

// class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
//  int _selectedIndex = 0;

//  void _onItemTapped(int index) {
//    setState(() {
//      _selectedIndex = index;
//    });
//  }

//  @override
//  Widget build(BuildContext context) {
//    return BottomNavigationBar(
//      items: const <BottomNavigationBarItem>[
//        BottomNavigationBarItem(
//          icon: Icon(Icons.home),
//          label: 'Home',
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.search),
//          label: 'Search',
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.add),
//          label: 'Add',
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.favorite),
//          label: 'Favorites',
//        ),
//        BottomNavigationBarItem(
//          icon: Icon(Icons.person),
//          label: 'Profile',
//        ),
//      ],
//      currentIndex: _selectedIndex,
//      selectedItemColor: Colors.amber[800],
//      onTap: _onItemTapped,
//    );
//  }
// }