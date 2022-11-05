import 'package:flutter/material.dart';
import 'secondPage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  final textControll = TextEditingController();
  String text = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent[700],
        elevation: 10.0,
        title: const Text(
          "First Page",
          style: TextStyle(fontSize: 22),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.start,
                controller: textControll,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                decoration: const InputDecoration(
                    hintText: 'Type Something ....',
                    border: InputBorder.none,
                    hintStyle: TextStyle(fontSize: 18)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: MaterialButton(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                elevation: 5.0,
                minWidth: 120,
                height: 50,
                color: Colors.indigoAccent[700],
                child: const Text('Send',
                    style: TextStyle(fontSize: 16.0, color: Colors.white)),
                onPressed: () {
                  setState(() {
                    text = textControll.text;
                  });
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Screen2(text)));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
