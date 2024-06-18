import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:umn_fellowship_app/screens/lectures.dart';
import 'package:umn_fellowship_app/screens/news.dart';
import 'package:umn_fellowship_app/widgets/brutalist_button.dart';
import "package:umn_fellowship_app/services/pdf_handler.dart";
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:umn_fellowship_app/data/news.dart";

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
/*     precacheImage(const AssetImage("assets/images/background.svg"), context);
    precacheImage(const AssetImage("assets/images/umn_logo.png"), context);
    precacheImage(const AssetImage("assets/images/abx.jpg"), context);
    precacheImage(const AssetImage("assets/images/lecture.jpg"), context);
    precacheImage(const AssetImage("assets/images/resources.jpg"), context);
    precacheImage(const AssetImage("assets/images/meetings.jpg"), context); */

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
                      onTap: () async {
                        openPDF(context, "antibiogram.pdf", "Antibiogram");
                      },
                      image: Image.asset("assets/images/abx.jpg",
                          fit: BoxFit.cover),
                      text: "Antibiogram"),
                  BrutalistButton(
                      onTap: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LecturesScreen()));
                      },
                      image: Image.asset("assets/images/lecture.jpg",
                          fit: BoxFit.cover),
                      text: "Lectures"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BrutalistButton(
                      onTap: () async {},
                      image: Image.asset("assets/images/resources.jpg",
                          fit: BoxFit.cover),
                      text: "Resources"),
                  BrutalistButton(
                      onTap: () async {},
                      image: Image.asset(
                        "assets/images/meetings.jpg",
                        fit: BoxFit.cover,
                      ),
                      text: "Meetings"),
                ],
              ),
              const SizedBox(height: 10),
              NeuContainer(
                height: 150,
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                child: Column(
                  children: [
                    const Text(
                      "Latest News",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: ListView.builder(
                            padding: const EdgeInsets.only(top: 0),
                            itemCount: news.length,
                            itemBuilder: (context, index) {
                              return Card(
                                child: ListTile(
                                  dense: true,
                                  title: Text(
                                    "${news[index].month} ${news[index].day} - ${news[index].title}",
                                    style: GoogleFonts.robotoCondensed(
                                      textStyle: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  trailing: const Icon(Icons.navigate_next),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => NewsScreen(
                                                  news: news[index],
                                                )));
                                  },
                                ),
                              );
                            }),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
