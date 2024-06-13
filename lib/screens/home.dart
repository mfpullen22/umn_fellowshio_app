import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umn_fellowship_app/widgets/home_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            "assets/images/background.svg",
            alignment: Alignment.center,
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/umn_logo.png",
                width: 200,
                height: 150,
              ),
              const Center(
                child: Text("UMN Infectious Diseases Fellowship App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    )),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeButton(color: Colors.amberAccent, title: "Testing"),
                  HomeButton(color: Colors.greenAccent, title: "A Test Button"),
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HomeButton(color: Colors.yellowAccent, title: "Another Test"),
                  HomeButton(color: Colors.blueAccent, title: "Test Button")
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
