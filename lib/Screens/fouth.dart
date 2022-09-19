import 'package:flutter/material.dart';

class FouthScreen extends StatelessWidget {
  const FouthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.orange,
        child: const Center(child: Text("Profile Section")),
      ),
    );
  }
}
