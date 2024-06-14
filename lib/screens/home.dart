import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umn_fellowship_app/widgets/brutalist_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(const AssetImage("assets/images/background.svg"), context);
    precacheImage(const AssetImage("assets/images/umn_logo.png"), context);
    precacheImage(const AssetImage("assets/images/abx.jpg"), context);
    precacheImage(const AssetImage("assets/images/lecture.jpg"), context);
    precacheImage(const AssetImage("assets/images/resources.jpg"), context);
    precacheImage(const AssetImage("assets/images/meetings.jpg"), context);

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
              const SizedBox(height: 20),
              const Center(
                child: Text("UMN Infectious Diseases Fellowship App",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    )),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BrutalistButton(
                      image: Image.asset("assets/images/abx.jpg",
                          fit: BoxFit.cover),
                      text: "Antibiogram"),
                  BrutalistButton(
                      image: Image.asset("assets/images/lecture.jpg",
                          fit: BoxFit.cover),
                      text: "Lectures"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BrutalistButton(
                      image: Image.asset("assets/images/resources.jpg",
                          fit: BoxFit.cover),
                      text: "Resources"),
                  BrutalistButton(
                      image: Image.asset(
                        "assets/images/meetings.jpg",
                        fit: BoxFit.cover,
                      ),
                      text: "Meetings"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
