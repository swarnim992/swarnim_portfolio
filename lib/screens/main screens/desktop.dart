import 'package:Swarnim_Jain/data/constants.dart';
import 'package:Swarnim_Jain/data/educatiton.dart';
import 'package:Swarnim_Jain/data/experience.dart';
import 'package:Swarnim_Jain/data/project.dart';
import 'package:Swarnim_Jain/data/skills.dart';
import 'package:Swarnim_Jain/functions/Custom_backdrop_filter.dart';
import 'package:Swarnim_Jain/functions/commanFunction.dart';
import 'package:Swarnim_Jain/functions/custom_tooltip.dart';
import 'package:Swarnim_Jain/functions/hover%20effect.dart';
import 'package:Swarnim_Jain/functions/notifySnackBar.dart';
import 'package:Swarnim_Jain/screens/reponsive/responsive_contacts.dart';
import 'package:Swarnim_Jain/screens/reponsive/responstive_projects.dart';
import 'package:Swarnim_Jain/screens/widgets/navigate.dart';
import 'package:Swarnim_Jain/theme/theme.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeline_tile/timeline_tile.dart';

class DesktopBody extends StatefulWidget {
  const DesktopBody({super.key});

  @override
  State<DesktopBody> createState() => _DesktopBodyState();
}

class _DesktopBodyState extends State<DesktopBody> {
  String rurl =
      'https://github.com/swarnim992/swarnim992/blob/main/Swarnim%20Jain.pdf';

  @override
  Widget build(BuildContext context) {
    double isdeviceWidth = MediaQuery.of(context).size.width;
    // double isdeviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth =
        isdeviceWidth < 1315 ? (MediaQuery.of(context).size.width + 194) : 1536;
    double deviceHeight = 729.5;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: deviceWidth < 1365 ? deviceWidth * 0.86 : deviceWidth * 0.84,

            child: Row(
              children: [
                Column(
                  children: [
                    // name
                    RepaintBoundary(
                      child: SizedBox(
                        height: 96.3,
                        child: CustomBox(
                          borderRadius: containerStyle.borderRadius,
                          margin: containerStyle.margin,
                          child: Container(
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            // margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Swarnim",
                                        style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.Name1,
                                        ),
                                      ),
                                      TextSpan(
                                        text: " Jain",
                                        style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.Name2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    // profile picture
                    RepaintBoundary(
                      child: SizedBox(
                        height: 340.8,
                        child: CustomBox(
                          borderRadius: containerStyle.borderRadius,
                          margin: containerStyle.margin,
                          child: Container(
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                              image: const DecorationImage(
                                image: AssetImage('assets/swarnim.png'),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                            padding: containerStyle.padding,
                            // margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  color: textStyles.B.color,
                                  Icons.verified_rounded,
                                  size: deviceWidth * 0.014,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    // contact me
                    RepaintBoundary(
                      child: SizedBox(
                        height: 240.5,
                        child: GestureDetector(
                          onTap: () {
                            navigateTo(context, const ResponsiveContacts());
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: CustomBox(
                              isHover: true,
                              hoverColor: ResumeColor,
                              borderRadius: containerStyle.borderRadius,
                              margin: containerStyle.margin,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: containerStyle.color,
                                  borderRadius: containerStyle.borderRadius,
                                ),
                                padding: containerStyle.padding,
                                // margin: containerStyle.margin,
                                width: deviceWidth * containerStyle.width,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: AutoSizeText(
                                            "Have some\nQuestions?",
                                            maxLines: 3,
                                            maxFontSize: 15,
                                            minFontSize: 10,
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.P1,
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          color: IconHClr,
                                          Icons.arrow_outward_rounded,
                                          size: deviceWidth * 0.014,
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: AutoSizeText.rich(
                                            maxFontSize: 23,
                                            minFontSize: 5,
                                            maxLines: 1,
                                            TextSpan(
                                              children: [
                                                TextSpan(
                                                  text: 'Contact ',
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.HeadingB,
                                                      ),
                                                ),
                                                TextSpan(
                                                  text: 'Me',
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.HeadingI,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    //about
                    SizedBox(
                      height: 248.3,
                      child: HoverEffect(
                        childA: CustomBox(
                          borderRadius: containerStyle.borderRadius,
                          margin: containerStyle.margin,
                          child: Container(
                            // constraints: const BoxConstraints(
                            //   maxHeight: 248.3,
                            //   // maxWidth: 300,
                            // ),
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            // height: 248.3,
                            width: deviceWidth * containerStyle.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(
                                      color: textStyles.B.color,
                                      Icons.lightbulb,
                                      size: deviceWidth * 0.014,
                                    ),
                                  ],
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Bridging",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.I,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " creativity",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.B,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ",\nand ",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.I,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "technology",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.B,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "\nthrough code.",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.B,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        childB: CustomBox(
                          borderRadius: containerStyle.borderRadius,
                          margin: containerStyle.margin,
                          child: Container(
                            // constraints: const BoxConstraints(
                            //   maxHeight: 248.3,
                            //   // maxWidth: 300,
                            // ),
                            decoration: BoxDecoration(
                              color: containerStyle.color,
                              borderRadius: containerStyle.borderRadius,
                            ),
                            padding: containerStyle.padding,
                            // height: 248.3,

                            // margin: containerStyle.margin,
                            width: deviceWidth * containerStyle.width,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Icon(
                                  color: textStyles.B.color,
                                  Icons.code,
                                  size: deviceWidth * 0.014,
                                ),
                                FittedBox(
                                  fit: BoxFit.scaleDown,
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "\nSoftware Development ",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.B,
                                          ),
                                        ),
                                        TextSpan(
                                          text: " \nEngineer",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.B,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "\nDecimal Point Analytics",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.I,
                                            fontSize: 15,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "\nB.E ",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.B,
                                            fontSize: 20,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "Computer Engineering",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.I,
                                            fontSize: 20,
                                          ),
                                        ),
                                        TextSpan(
                                          text: "\nNashik",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.I,
                                            fontSize: kDefaultFontSize,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ", India",
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.B,
                                            fontSize: kDefaultFontSize,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),

                    //about me
                    SizedBox(
                      height: 317,
                      child: CustomBox(
                        isHover: false,
                        hoverColor: ResumeColor,
                        margin: containerStyle.margin,
                        borderRadius: containerStyle.borderRadius,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          // margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: AutoSizeText.rich(
                                      maxFontSize: 23,
                                      minFontSize: 5,
                                      maxLines: 1,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'About ',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingB,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Me',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingI,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              AutoSizeText(
                                minFontSize: 10,
                                maxFontSize: 15,
                                maxLines: 10,
                                style: GoogleFonts.chakraPetch(
                                  textStyle: textStyles.P1,
                                ),
                                Profile_Summary,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // resume
                    SizedBox(
                      height: 112.3,
                      child: GestureDetector(
                        onTap: () {
                          downloadResume(rurl);
                          notifySnackBar(
                            context,
                            "My Resume Will Be Downloaded Shortly",
                          );
                        },
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: CustomBox(
                            // color: containerStyle.colorR,
                            hoverColor: const Color.fromARGB(
                              255,
                              255,
                              255,
                              255,
                            ),
                            isHover: true,
                            borderRadius: containerStyle.borderRadius,
                            margin: containerStyle.margin,
                            child: Container(
                              decoration: BoxDecoration(
                                color: containerStyle.colorR,
                                borderRadius: containerStyle.borderRadius,
                              ),
                              padding: containerStyle.padding,
                              // margin: containerStyle.margin,
                              width: deviceWidth * containerStyle.width,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(
                                    color: textStyles.B.color,
                                    Icons.download_rounded,
                                    size: deviceWidth * 0.014,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: AutoSizeText.rich(
                                          maxFontSize: 23,
                                          minFontSize: 5,
                                          maxLines: 1,
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "My ",
                                                style: GoogleFonts.chakraPetch(
                                                  textStyle:
                                                      textStyles.HeadingB,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "Resume",
                                                style: GoogleFonts.chakraPetch(
                                                  textStyle:
                                                      textStyles.HeadingI,
                                                  color: Colors.black,
                                                  // backgroundColor: const Color.fromARGB(255, 119, 119, 119)
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    // projects
                    SizedBox(
                      height: 378.6,
                      child: CustomBox(
                        isHover: true,
                        hoverColor: ResumeColor,
                        borderRadius: containerStyle.borderRadius,
                        margin: containerStyle.margin,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.paddingNew,
                          // margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  navigateTo(
                                    context,
                                    const ResponstiveProjects(initialIndex: 0),
                                  );
                                },
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: AutoSizeText.rich(
                                          maxFontSize: 23,
                                          minFontSize: 5,
                                          maxLines: 1,
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'My ',
                                                style: GoogleFonts.chakraPetch(
                                                  textStyle:
                                                      textStyles.HeadingB,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Projects',
                                                style: GoogleFonts.chakraPetch(
                                                  textStyle:
                                                      textStyles.HeadingI,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        color: IconHClr,
                                        Icons.arrow_outward_rounded,
                                        size: deviceWidth * 0.014,
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              ///padding box
                              SizedBox(height: deviceHeight * 0.015),

                              // projects data
                              Expanded(
                                child: ScrollConfiguration(
                                  behavior: const ScrollBehavior().copyWith(
                                    scrollbars: false,
                                  ),
                                  child: ListView.builder(
                                    itemCount: projects.length,
                                    itemBuilder: (context, index) {
                                      return GestureDetector(
                                        onTap: () {
                                          navigateTo(
                                            context,
                                            ResponstiveProjects(
                                              initialIndex: index,
                                            ),
                                          );
                                        },
                                        child: MouseRegion(
                                          cursor: SystemMouseCursors.click,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color:
                                                  ProjectcontainerStyle.color,
                                              borderRadius:
                                                  EducationcontainerStyle
                                                      .borderRadius,
                                            ),
                                            padding:
                                                ProjectcontainerStyle.padding,
                                            margin:
                                                ProjectcontainerStyle.margin,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                            right: 8.0,
                                                          ),
                                                      child: Icon(
                                                        color:
                                                            textStyles.B.color,
                                                        projects[index].icon,
                                                        size:
                                                            deviceWidth * 0.014,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width:
                                                          deviceWidth * 0.115,
                                                      child: AutoSizeText(
                                                        minFontSize: 15,
                                                        maxFontSize: 15,
                                                        maxLines: 1,
                                                        style:
                                                            GoogleFonts.chakraPetch(
                                                              textStyle:
                                                                  textStyles
                                                                      .P2B,
                                                            ),
                                                        overflow:
                                                            TextOverflow
                                                                .ellipsis,
                                                        projects[index].title,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Icon(
                                                  color: textStyles.B.color,
                                                  Icons
                                                      .arrow_forward_ios_rounded,
                                                  size: deviceWidth * 0.014,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // skills
                    SizedBox(
                      height: 299.0,
                      child: CustomBox(
                        borderRadius: containerStyle.borderRadius,
                        margin: containerStyle.margin,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.padding,
                          // margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: AutoSizeText.rich(
                                      maxFontSize: 23,
                                      minFontSize: 5,
                                      maxLines: 1,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'My',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingI,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' Skills',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingB,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    color: textStyles.B.color,
                                    Icons.lens_blur_rounded,
                                    size: deviceWidth * 0.014,
                                  ),
                                ],
                              ),

                              ///padding box
                              SizedBox(height: deviceHeight * 0.015),
                              ////
                              Expanded(
                                flex: 2,
                                child: ScrollConfiguration(
                                  behavior: const ScrollBehavior().copyWith(
                                    scrollbars: false,
                                  ),
                                  child: GridView.builder(
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 4,
                                          // crossAxisCount: 3,
                                          // crossAxisCount: 5,
                                        ),
                                    itemCount: skills.length,
                                    itemBuilder: (context, index) {
                                      return Container(
                                        decoration: BoxDecoration(
                                          // color: containerStyle.color,
                                          borderRadius:
                                              containerStyle.borderRadius,
                                        ),
                                        child: Center(
                                          child: Custom_tooltip(
                                            message: skills[index].name,
                                            child: SvgPicture.asset(
                                              skills[index].svgPath,
                                              width: deviceWidth * 0.06,
                                              height: deviceHeight * 0.06,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Column(
                  children: [
                    // Experiance
                    SizedBox(
                      height: 200.4,
                      child: CustomBox(
                        borderRadius: containerStyle.borderRadius,
                        margin: containerStyle.margin,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.paddingNew,
                          // margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: AutoSizeText.rich(
                                      maxFontSize: 23,
                                      minFontSize: 5,
                                      maxLines: 1,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'My ',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingB,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Experience',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingI,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    color: textStyles.B.color,
                                    Icons.work_history_rounded,
                                    size: deviceWidth * 0.014,
                                  ),
                                ],
                              ),

                              SizedBox(height: deviceHeight * 0.015),

                              Expanded(
                                child: ScrollConfiguration(
                                  behavior: const ScrollBehavior().copyWith(
                                    scrollbars: false,
                                  ),
                                  child: ListView.builder(
                                    itemCount: Experiences.length,
                                    itemBuilder: (context, index) {
                                      return TimelineTile(
                                        isFirst: Experiences[index].start,
                                        isLast: Experiences[index].end,
                                        afterLineStyle: LineStyle(
                                          thickness: 2,
                                          color: EducationcontainerStyle.color,
                                        ),
                                        beforeLineStyle: LineStyle(
                                          thickness: 2,
                                          color: EducationcontainerStyle.color,
                                        ),
                                        indicatorStyle: IndicatorStyle(
                                          color: EducationcontainerStyle.color,
                                          iconStyle: IconStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            iconData: Icons.arrow_right_rounded,
                                          ),
                                        ),
                                        alignment: TimelineAlign.start,
                                        endChild: Container(
                                          padding:
                                              EducationcontainerStyle.padding,
                                          margin:
                                              EducationcontainerStyle.margin,
                                          decoration: BoxDecoration(
                                            color:
                                                EducationcontainerStyle.color,
                                            borderRadius:
                                                EducationcontainerStyle
                                                    .borderRadius,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  Experiences[index].role,
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_H_B,
                                                      ),
                                                ),
                                              ),
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      Experiences[index]
                                                          .startTime,
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle:
                                                                textStyles
                                                                    .edu_P_L,
                                                          ),
                                                    ),
                                                    Text(
                                                      ' - ',
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle:
                                                                textStyles
                                                                    .edu_P_L,
                                                          ),
                                                    ),
                                                    Text(
                                                      Experiences[index]
                                                          .endTime,
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle:
                                                                textStyles
                                                                    .edu_P_L,
                                                          ),
                                                    ),
                                                    Text(
                                                      ' • ',
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle:
                                                                textStyles
                                                                    .edu_P_L,
                                                          ),
                                                    ),
                                                    Text(
                                                      Experiences[index]
                                                                  .endTime ==
                                                              'Present'
                                                          ? dateCalculateExpe(
                                                            Experiences[index]
                                                                .startTime,
                                                          )
                                                          : Experiences[index]
                                                              .duration,
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle: textStyles
                                                                .edu_P_L
                                                                .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                // color: Colors.amber,
                                                // width: deviceWidth * 0.1,
                                                child: Text(
                                                  Experiences[index]
                                                      .companyName,
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_P_N,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Education
                    SizedBox(
                      height: 473.2,
                      child: CustomBox(
                        borderRadius: containerStyle.borderRadius,
                        margin: containerStyle.margin,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: containerStyle.paddingNew,
                          // margin: containerStyle.margin,
                          width: deviceWidth * containerStyle.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: AutoSizeText.rich(
                                      maxFontSize: 23,
                                      minFontSize: 5,
                                      maxLines: 1,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'My ',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingB,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Education',
                                            style: GoogleFonts.chakraPetch(
                                              textStyle: textStyles.HeadingI,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    color: textStyles.B.color,
                                    Icons.school_rounded,
                                    size: deviceWidth * 0.014,
                                  ),
                                ],
                              ),

                              SizedBox(height: deviceHeight * 0.015),

                              Expanded(
                                child: ScrollConfiguration(
                                  behavior: const ScrollBehavior().copyWith(
                                    scrollbars: false,
                                  ),
                                  child: ListView.builder(
                                    itemCount: Educations.length,
                                    itemBuilder: (context, index) {
                                      return TimelineTile(
                                        isFirst: Educations[index].start,
                                        isLast: Educations[index].end,
                                        afterLineStyle: LineStyle(
                                          thickness: 2,
                                          color: EducationcontainerStyle.color,
                                        ),
                                        beforeLineStyle: LineStyle(
                                          thickness: 2,
                                          color: EducationcontainerStyle.color,
                                        ),
                                        indicatorStyle: IndicatorStyle(
                                          color: EducationcontainerStyle.color,
                                          iconStyle: IconStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            iconData: Icons.arrow_right_rounded,
                                          ),
                                        ),
                                        alignment: TimelineAlign.start,
                                        endChild: Container(
                                          padding:
                                              EducationcontainerStyle.padding,
                                          margin:
                                              EducationcontainerStyle.margin,
                                          decoration: BoxDecoration(
                                            color:
                                                EducationcontainerStyle.color,
                                            borderRadius:
                                                EducationcontainerStyle
                                                    .borderRadius,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Text(
                                                  Educations[index]
                                                      .institutionName,
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_H_B,
                                                      ),
                                                ),
                                              ),
                                              FittedBox(
                                                fit: BoxFit.scaleDown,
                                                child: Row(
                                                  children: [
                                                    Text(
                                                      Educations[index]
                                                          .startTime,
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle:
                                                                textStyles
                                                                    .edu_P_L,
                                                          ),
                                                    ),
                                                    const Text(" - "),
                                                    Text(
                                                      Educations[index].endTime,
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle:
                                                                textStyles
                                                                    .edu_P_L,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Educations[index].department != ''
                                                  ? FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      Educations[index]
                                                          .department,
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle: textStyles
                                                                .edu_P_N
                                                                .copyWith(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                    ),
                                                  )
                                                  : const Offstage(),
                                              Educations[index].grade != ''
                                                  ? FittedBox(
                                                    fit: BoxFit.scaleDown,
                                                    child: Text(
                                                      Educations[index].grade,
                                                      style:
                                                          GoogleFonts.chakraPetch(
                                                            textStyle:
                                                                textStyles
                                                                    .edu_P_N,
                                                          ),
                                                    ),
                                                  )
                                                  : const Offstage(),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
