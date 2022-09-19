// ignore_for_file: file_names
import 'package:flutter/material.dart';

class RandN extends StatelessWidget {
  const RandN({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "215 Expert Opinion",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.blue),
                child: const Center(
                    child: Text(
                  "12%",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              )
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Thehill Last week the dire warnings that appeared in the Wall Street Journal. The Economist and Foreign Affairs About China's imminent war with ...",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
