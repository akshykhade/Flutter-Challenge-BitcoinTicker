import 'package:crypto_ticker/utils/constants.dart';
import 'package:flutter/material.dart';

import 'components/CryptoCard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Ticker',
      theme: ThemeData.dark().copyWith(
        primaryColor: kBackgroundColor,
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Crypto Ticker'),
          backgroundColor: kAppbarBC,
          actions: [
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: 'USD',
                items: ['USD', 'INR', 'ETC']
                    .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(e),
                        ))
                    .toList(),
                onChanged: (c) {},
              ),
            ),
          ],
        ),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [for (var i in List.filled(10, null)) CryptoCard()],
    );
  }
}
