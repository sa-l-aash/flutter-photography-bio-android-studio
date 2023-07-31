import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

void showAddDateDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: const Text('Calender'),
            content: Column(mainAxisSize: MainAxisSize.min, children: [
              TextField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                    labelText: 'Date',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold)),
              ),
              TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      labelText: 'Month',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold))),
              TextField(
                  onChanged: (value) {},
                  decoration: const InputDecoration(
                      labelText: 'Year',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold)))
            ]),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.check)),
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.delete))
            ]);
      });
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Jidetta Troy',
            style: GoogleFonts.alkatra()
                .copyWith(fontSize: 28, fontWeight: FontWeight.w700),
          ),
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10),
          child: Column(children: <Widget>[
            //
            const Text(''),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: const Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/14384723/pexels-photo-14384723.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2'),
                fit: BoxFit.contain,
              ),
            ),

            const Text(''),
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
            const Text(''),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: const Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/17747475/pexels-photo-17747475/free-photo-of-the-end-of-another-day.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                fit: BoxFit.contain,
              ),
            ),
            const Text(''),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: const Image(
                image: NetworkImage(
                    'https://images.pexels.com/photos/17688887/pexels-photo-17688887/free-photo-of-picnic-rose-in-summer.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                fit: BoxFit.contain,
              ),
            ),
            const Text(''),
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
                          builder: (context) => const HomeScreen()));
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
                  label: 'home'),
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
