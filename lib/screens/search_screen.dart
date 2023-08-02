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
                    fontWeight: FontWeight.w700,
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text(
                        'Nature',
                        style: GoogleFonts.alkatra().copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text(
                        'Seas',
                        style: GoogleFonts.alkatra().copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text(
                        'Cars',
                        style: GoogleFonts.alkatra().copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      )),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black),
                      child: Text(
                        'Wildlife',
                        style: GoogleFonts.alkatra().copyWith(
                            fontSize: 14, fontWeight: FontWeight.w700),
                      )),
                ],
              ),
              const Text(''),
              Text('Popular',
                  style: GoogleFonts.alkatra().copyWith(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                  )),
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
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const SearchScreen()));
                    },
                    icon: const Icon(Icons.search),
                    color: Colors.grey,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (context) => const FavoriteScreen()));
                    },
                    icon: const Icon(Icons.favorite),
                    color: Colors.grey,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
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
