import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/screens/favorite_screen.dart';
import 'package:playground/screens/home_screen.dart';
import 'package:playground/screens/search_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ABOUT',
              style: GoogleFonts.alkatra()
                  .copyWith(fontSize: 28, fontWeight: FontWeight.w700)),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(40),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(900),
                    child: const Image(
                        image: AssetImage('images/View of the sky_.png')),
                  ),
                  const Text(''),
                  Column(
                    children: [
                      Text('Name: Troy Jiddeta',
                          style: GoogleFonts.alkatra().copyWith(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                      Text('Years of experience: 15 years',
                          style: GoogleFonts.alkatra().copyWith(
                              fontSize: 20, fontWeight: FontWeight.w700)),
                      const Text(
                          'This is my photograph app where I post my photos',
                      style:TextStyle(fontSize:16,))
                    ],
                  ),
                  const Text(''),
                  const Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
                  const Text(''),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () async {
                          const url = 'https://www.instagram.com/jidetta/';
                          final uri = Uri.parse(url);

                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                        icon: const Icon(
                          FontAwesomeIcons.instagram,
                          size: 30,
                        ),
                      ),
                      IconButton(
                          onPressed: () async {
                            const url = 'https://www.facebook.com/';
                            final uri = Uri.parse(url);
                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri);
                            } else {
                              throw 'could not launch $url';
                            }
                          },
                          icon: const Icon(
                            FontAwesomeIcons.facebook,
                            size: 30,
                          )),
                      IconButton(
                          onPressed: () async {
                            const url = 'https://twitter.com/home';
                            final uri = Uri.parse(url);

                            if (await canLaunchUrl(uri)) {
                              await launchUrl(uri);
                            } else {
                              throw 'could not launch $url';
                            }
                          },
                          icon: const Icon(
                            FontAwesomeIcons.twitter,
                            size: 30,
                          ))
                    ],
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
                    color: Colors.grey,
                  ),
                  label: ''),
            ],
          ),
        ));
  }
}
