import "package:flutter/material.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UMN Infectious Diseases"),
        leading: Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image.asset("assets/images/umn_logo.png"),
        ),
      ),
      body: const Center(
        child: Text("Welcome to the UMN ID Fellowship App!"),
      ),
    );
  }
}
