import 'package:flutter/material.dart';

class Reaction extends StatelessWidget {
  const Reaction({super.key});

  static const routeName = '\reaction';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const [Icon(Icons.contact_phone), Text("215")],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              children: const [Icon(Icons.comment), Text("95K")],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("lib/assets/Liz Truss.jpg"),
              ),
              const SizedBox(
                width: 4,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.84,
                child: const Text(
                    "Linda If china does indeed attack taiwan soon,october is the the likely since the...more"),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("lib/assets/Liz Truss.jpg"),
              ),
              const SizedBox(
                width: 4,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.84,
                child: const Text(
                    "Linda If china does indeed attack taiwan soon,october is the the likely since the...more"),
              )
            ],
          ),
        )
      ],
    );
  }
}
