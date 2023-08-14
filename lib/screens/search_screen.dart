import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/screens/account_screen.dart';
import 'package:playground/screens/favorite_screen.dart';
import 'package:playground/screens/home_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> items = [
    'Nature',
    'Seas',
    'Cars',
    'Wildlife',
    'Skies',
    'People',
    'Children',
    'Pets',
    'Buildings'
  ];
  String? selectedItem = 'Nature';
  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
      child: Text('item ',
          style: GoogleFonts.alkatra().copyWith(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black87)));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search',
              style: GoogleFonts.alkatra()
                  .copyWith(fontSize: 28, fontWeight: FontWeight.w700)),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(40),
            child: Column(children: <Widget>[
              const TextField(
                decoration: InputDecoration(
                  labelText: 'search',
                  labelStyle: TextStyle(fontSize: 16, color: Colors.black),
                  icon: Icon(Icons.search, color: Colors.black),
                ),
              ),
              const Text(''),
              Text('Ideas for you',
                  style: GoogleFonts.alkatra().copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  )),
              const Text(''),
              SizedBox(
                width: 200,
                child: DropdownButtonFormField<String>(
                  iconSize: 25,
                  iconEnabledColor: Colors.black,
                  menuMaxHeight: 200,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(width: 2, color: Colors.black),
                  )),
                  value: selectedItem,
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(item,
                                style: const TextStyle(fontSize: 20)),
                          ))
                      .toList(),
                  onChanged: (item) => setState(() => selectedItem = item),
                ),
              ),
              const Text(''),
            ])),

        //BOTTOM NAVIGATION BAR
        //The following code creates the bottom navigation bar with 4 icon buttons
        //that route to their respective pages

        bottomNavigationBar: SizedBox(
          height: 78,
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const SearchScreen()));
                    },
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const FavoriteScreen()));
                    },
                    icon: const Icon(Icons.favorite),
                    color: Colors.grey,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AccountScreen()));
                    },
                    icon: const Icon(Icons.person),
                    color: Colors.grey,
                  ),
                  label: ''),
            ],
          ),
        ));
  }
}
