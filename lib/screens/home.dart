import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UMN Infectious Diseases"),
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Image.asset("assets/images/umn_logo.png"),
        ),
      ),
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/images/background.svg",
            alignment: Alignment.center,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Center(
            child: Text("Welcome to the UMN ID Fellowship App!"),
          ),
        ],
      ),
    );
  }
}
