import "package:flutter/material.dart";
import 'package:neubrutalism_ui/neubrutalism_ui.dart';
import 'package:google_fonts/google_fonts.dart';

class BrutalistButton extends StatelessWidget {
  const BrutalistButton(
      {super.key,
      required this.image,
      required this.text,
      required this.onTap});

  final Image image;
  final String text;
  final Future<void> Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          splashColor: Colors.grey.withOpacity(0.3),
          onTap: onTap,
          child: NeuContainer(
            height: 150,
            width: 150,
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Column(
                children: [
                  image,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        text,
                        style: GoogleFonts.robotoCondensed(
                          textStyle: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
