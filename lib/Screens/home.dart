// ignore_for_file: must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:voting_app_ui/Screens/r&n.dart';
import 'package:voting_app_ui/Screens/reactions.dart';
import 'package:voting_app_ui/Screens/related.dart';
import 'package:voting_app_ui/widgets/bottom_nav_bar.dart';
import 'package:voting_app_ui/widgets/image_container.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  static const routeName = '/home';
  List<String> tabs = ['Research & News', 'Reactions', 'Related'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: const Icon(
                  Icons.share,
                  size: 38,
                ),
                onPressed: () {
                  print("It Will Share");
                },
              ),
            )
          ],
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        bottomNavigationBar: const SizedBox(
          child: BottomNavBar(
            index: 0,
          ),
        ),
        extendBodyBehindAppBar: true,
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            ImageContainer(
              height: MediaQuery.of(context).size.height * 0.45,
              width: double.infinity,
              image: '',
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Will China invade Taiwan before end September?",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Icon(
                        Icons.equalizer,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.12,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  color: Colors.purple),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text(
                          "CHANGE",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(
                          "11%",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        )
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.arrow_upward,
                    color: Colors.green,
                    size: 40,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "24H",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                      Text(
                        "+25495\$",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "\$09",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            null;
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.lightGreen)),
                          child: const Text("Yes")),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "\$89",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      ElevatedButton(
                          onPressed: () {
                            null;
                          },
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.pink)),
                          child: const Text("No")),
                    ],
                  ),
                ],
              ),
            ),
            Center(
              child: TabBar(
                  automaticIndicatorColorAdjustment: true,
                  isScrollable: true,
                  tabs: tabs
                      .map(
                        (tab) => Tab(
                          icon: Text(
                            tab,
                            style: const TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                      .toList()),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.26,
              child: const TabBarView(
                children: [
                  RandN(),
                  Reaction(),
                  Related(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
