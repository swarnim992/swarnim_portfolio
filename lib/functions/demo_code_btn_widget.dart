import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/data/project.dart';
import 'package:portfolio/functions/hover%20effect.dart';
import 'package:portfolio/functions/launch_url.dart';
import 'package:portfolio/functions/notifySnackBar.dart';
import 'package:portfolio/theme/theme.dart';

class demo_code_button extends StatelessWidget {
  final dynamic index;
  const demo_code_button({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    const rad = Radius.circular(8);
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          //code btn
          if(projects[index].githubLink !='')...[
            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                codeButton(context, projects[index]);
              },
              child: HoverEffect(
                childA: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 10),
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(rad),
                    color: EducationcontainerStyle.color,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        "Code",
                        style: GoogleFonts.chakraPetch(
                          textStyle: textStyles.P1,
                        ),
                        minFontSize: 5,
                        maxFontSize: 15,
                        maxLines: 1,
                      ),
                      Icon(
                        color: textStyles.B.color,
                        Icons.code_rounded,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                childB: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 10),
                  height: 30,
                  width: 90,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(rad),
                    color: Colors.white70,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        "Code",
                        style: GoogleFonts.chakraPetch(
                          textStyle: textStyles.P1,
                          color: Colors.black87,
                        ),
                        minFontSize: 5,
                        maxFontSize: 15,
                        maxLines: 1,
                      ),
                      const Icon(
                        color: Colors.black87,
                        Icons.code_rounded,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ],
          //demo btn
          if(projects[index].demoVideoLink != '')...[
            MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                demoButton(context, projects[index]);
              },
              child: HoverEffect(
                childA: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 10),
                  height: 30,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(rad),
                    color: EducationcontainerStyle.color,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        "Run",
                        style: GoogleFonts.chakraPetch(
                          textStyle: textStyles.P1,
                        ),
                        minFontSize: 5,
                        maxFontSize: 15,
                        maxLines: 1,
                      ),
                      Icon(
                        color: textStyles.B.color,
                        Icons.play_arrow_rounded,

                        // Icons.flash_on_rounded,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                childB: Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.only(right: 10),
                  height: 30,
                  width: 90,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(rad),
                    color: Colors.white70,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AutoSizeText(
                        "Run",
                        style: GoogleFonts.chakraPetch(
                          textStyle: textStyles.P1,
                          color: Colors.black87,
                        ),
                        minFontSize: 5,
                        maxFontSize: 15,
                        maxLines: 1,
                      ),
                      const Icon(
                        color: Colors.black87,
                        Icons.play_arrow_rounded,

                        // Icons.flash_on_rounded,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          ],
        ],
      ),
    );
  }
}

void codeButton(BuildContext context, index) {
  index.githubLink != ''
      ? urlLaunch(index.githubLink)
      : notifySnackBar(
        context,
        "Sorry, the GitHub code for this project is not available.",
      );
}

void demoButton(BuildContext context, index) {
  index.demoVideoLink != ''
      ? urlLaunch(index.demoVideoLink)
      : notifySnackBar(
        context,
        "Sorry, the demo for this project is not available. Please check back later!",
      );
}
