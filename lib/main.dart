import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Avatar(),
        ),
      ),
    );
  }
}

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_literals_to_create_immutables
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      const CircleAvatar(
        radius: 50,
        backgroundColor: Colors.white,
        backgroundImage: NetworkImage(
            "https://avatars.githubusercontent.com/u/111555521?v=4"),
      ),
      const Text(
        "Phat Panhareach",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'Pacifico'),
      ),
      const Text(
        "Mobile Developer",
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 18,
            color: Colors.white70,
            fontFamily: 'SourceSansPro',
            letterSpacing: 3,
            fontWeight: FontWeight.bold),
      ),
      const SizedBox(
        height: 15,
        width: 150,
        child: Divider(
          thickness: 2,
          color: Colors.white30,
        ),
      ),
      const Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(Icons.phone, color: Colors.teal),
          title: Text(
            "+885 81-65-46-06",
            style: TextStyle(
                fontFamily: 'SourceSansPro', fontSize: 14, color: Colors.teal),
          ),
        ),
      ),
      const Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        // ignore: prefer_const_literals_to_create_immutables
        child: ListTile(
          leading: Icon(Icons.mail, color: Colors.teal),
          title: Text(
            "panhareach.phat@student.cadt.edu.kh",
            style: TextStyle(
                fontFamily: 'SourceSansPro', fontSize: 14, color: Colors.teal),
          ),
        ),
      ),
      const Card(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        // ignore: prefer_const_literals_to_create_immutables
        child: ListTile(
          leading: Icon(Icons.home, color: Colors.teal),
          title: Text(
            "Phnom Penh, Cambodia",
            style: TextStyle(
                fontFamily: 'SourceSansPro', fontSize: 14, color: Colors.teal),
          ),
        ),
      ),
    ]);
  }
}
