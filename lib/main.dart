import 'dart:math';

import 'package:flutter/material.dart';

import '../style/main_style.dart';
import 'constant.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: theme,
    home: const MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(kMainTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.event_note_outlined),
            color: Colors.black,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            color: Colors.black,
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kMainMargin),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(kMainMargin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Theme.of(context).primaryColor,
              ),
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: Column(
                          children: [
                            Text(
                              kBodyTitle,
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              kBodySmallTitle,
                              style: Theme.of(context).textTheme.titleSmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Image.asset('assets/images/illustration.png')
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              padding: const EdgeInsets.all(kMainMargin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kBorderRadius),
                color: Theme.of(context).cardColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(kBodyDownProblemsTitle,
                          style: Theme.of(context).textTheme.titleMedium),
                      Text(kBodyDownProblemsSmallTitle,
                          style: Theme.of(context).textTheme.bodyMedium),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(40, 60),
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(kButtonBorderRadius),
                      ),
                    ),
                    child: Icon(Icons.arrow_forward,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
