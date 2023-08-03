import 'package:flutter/material.dart';
//importing google fonts
import 'package:google_fonts/google_fonts.dart';
import 'package:playground/screens/account_screen.dart';
import 'package:playground/screens/favorite_screen.dart';
import 'package:playground/screens/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //a function to show the details of a photo once it is tapped
  final List<Widget> imageWidgetList = [];

  @override
  void initState() {
    super.initState();

    initImageList();
  }

  Widget imageTile(BuildContext context, String imageUrl) {
    return InkWell(
        onTap: () {
          showPictureDetails(context);
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Image.network(imageUrl, fit: BoxFit.contain),
        ));
  }

  void initImageList() {
    for (int i = 0; i == imagesUrlStrings.length; i++) {
      imageWidgetList.add(imageTile(context, imagesUrlStrings[i]));
    }
  }

  showPictureDetails(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title: Text(
                'Picture name',
                style: GoogleFonts.aboreto()
                    .copyWith(fontSize: 25, fontWeight: FontWeight.w700),
              ),
              content:
                  const Column(mainAxisSize: MainAxisSize.min, children: []));
        });
  }

  final List imagesUrlStrings = [
    'https://images.pexels.com/photos/14384723/pexels-photo-14384723.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
        'https://images.pexels.com/photos/16503530/pexels-photo-16503530/free-photo-of-man-wearing-bright-clothing-standing-in-a-muddy-field.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
        'https://images.pexels.com/photos/16883535/pexels-photo-16883535/free-photo-of-woman-in-white-dress-posing-in-building-door.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
        'https://images.pexels.com/photos/6110294/pexels-photo-6110294.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'
        'https://images.pexels.com/photos/17747475/pexels-photo-17747475/free-photo-of-the-end-of-another-day.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
        'https://images.pexels.com/photos/17688887/pexels-photo-17688887/free-photo-of-picnic-rose-in-summer.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //the app bar
        appBar: AppBar(
          title: Text(
            'Jidetta Troy',
            style: GoogleFonts.alkatra()
                .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.black,
        ),
        //the boy of the app
        body: SingleChildScrollView(
          //spacing
          padding: const EdgeInsets.all(10),
          child: Column(children: <Widget>[
            ...imageWidgetList,
            const Column(children: [
               SizedBox(height: 10),
            ])
          ]),
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
