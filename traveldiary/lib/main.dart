import 'package:flutter/material.dart';
import 'package:traveldiary/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI',
      theme: appTheme,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(shrinkWrap: true, children: [
        Row(
          children: [
            Flexible(
              child: Container(
                constraints: const BoxConstraints(maxWidth: 700),
                child: Text(
                  "travelogram",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.grey,
                size: 20,
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/chris.jpg"),
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
