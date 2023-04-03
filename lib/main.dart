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
              height: MediaQuery.of(context).size.height * 0.55,
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
                      elevation: 0.5,
                      minimumSize: const Size(40, 50),
                      backgroundColor: Theme.of(context).secondaryHeaderColor,
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(kButtonBorderRadius),
                      ),
                    ),
                    child: Icon(Icons.arrow_forward,
                        size: 16.5,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kSmallMargin),
              child: Row(
                children: [
                  Text(
                    kFooterTitle,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    width: 80.0,
                    height: 50.0,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
