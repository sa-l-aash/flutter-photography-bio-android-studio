import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/screens/account_screen.dart';
import 'package:playground/screens/home_screen.dart';
import 'package:playground/screens/search_screen.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(' Favorites',
              style: GoogleFonts.alkatra()
                  .copyWith(fontSize: 28, fontWeight: FontWeight.w700)),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(40),
            child: Column(children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: const Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/16503530/pexels-photo-16503530/free-photo-of-man-wearing-bright-clothing-standing-in-a-muddy-field.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                  fit: BoxFit.contain,
                ),
              ),
              const Text(''),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: const Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/16883535/pexels-photo-16883535/free-photo-of-woman-in-white-dress-posing-in-building-door.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                  fit: BoxFit.contain,
                ),
              ),
              const Text(''),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: const Image(
                  image: NetworkImage(
                      'https://images.pexels.com/photos/6110294/pexels-photo-6110294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                  fit: BoxFit.contain,
                ),
              ),
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
                          builder: (context) => const HomeScreen()));
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
