// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';

class Related extends StatelessWidget {
  const Related({super.key});

  static const routeName = '/related';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            onTap: () {
              print("null");
            },
            leading: const Image(image: AssetImage("lib/assets/Stock.jpg")),
            title: const Text(
                "British Pound will fall after Prime Minister elections",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 10,
          ),
          ListTile(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0)),
            onTap: () {
              print("null");
            },
            leading: const Image(image: AssetImage("lib/assets/Liz Truss.jpg")),
            title: const Text("Liz Truss will be UK's next Prime Minister?",
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [Text("show more")],
          )
        ],
      ),
    );
  }
}
