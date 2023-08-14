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
  //a function for an alert dialog
  showSavedImages(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              contentPadding: const EdgeInsets.only(left: 25, right: 25),
              title: Center(
                child: Text('Saved',
                    style: GoogleFonts.aboreto().copyWith(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
              ),
              content: const SizedBox(
                  height: 400,
                  width: 250,
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(children: [
                      SizedBox(height: 8),
                      Image(
                        image: AssetImage(
                            'images/H304 THE COLOURFUL HOLIDAY.jpeg'),
                        width: 300,
                      ),
                      Image(
                        image: AssetImage('images/HD WALLPAPER.jpeg'),
                        width: 300,
                      ),
                      Image(
                        image: AssetImage('images/View of the sky_.png'),
                        width: 300,
                      ),
                    ]),
                  )));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Account',
              style: GoogleFonts.alkatra()
                  .copyWith(fontSize: 28, fontWeight: FontWeight.w700)),
          actions: [
            IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => const HomeScreen()));
                })
          ],
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(900),
                      child: const Image(
                        image: AssetImage('images/HD WALLPAPER.jpeg'),
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                        alignment: Alignment.centerRight,
                        //      width: MediaQuery.of(context).size.width * 0.9,
                      ),
                    ),
                  ),
                  const Text(''),
                  Text('Username:  JIDETTA',
                      style: GoogleFonts.alkatra()
                          .copyWith(fontSize: 25, fontWeight: FontWeight.w700)),
                  TextButton(
                      onPressed: () {
                        showSavedImages(context);
                      },
                      child: Text('saved',
                          style: GoogleFonts.alkatra().copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)))
                ])),
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
                      color: Colors.grey,
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
                    icon: const Icon(Icons.person),
                    color: Colors.white,
                  ),
                  label: ''),
            ],
          ),
        ));
  }
}
