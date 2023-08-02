import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/screens/home_screen.dart';
import 'package:playground/screens/search_screen.dart';
import 'package:playground/screens/favorite_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Account',
              style: GoogleFonts.alkatra()
                  .copyWith(fontSize: 28, fontWeight: FontWeight.w700)),
          backgroundColor: Colors.black,
        ),
        body: const  SingleChildScrollView(
            padding:  EdgeInsets.all(40),
            child: Column(children: <Widget>[
              Image(image:
              AssetImage('images/View of the sky_.png')
              )


            ]
            )
        ),
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
                          builder: (context) => const HomeScreen()));
                    },
                    icon: const Icon(Icons.account_box),
                    color: Colors.grey,
                  ),
                  label: ''),
            ],
          ),
        ));
  }
}
