import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:Swarnim_Jain/data/educatiton.dart';
import 'package:Swarnim_Jain/data/experience.dart';
import 'package:Swarnim_Jain/data/project.dart';
import 'package:Swarnim_Jain/data/skills.dart';
import 'package:Swarnim_Jain/functions/Custom_backdrop_filter.dart';
import 'package:Swarnim_Jain/functions/commanFunction.dart';
import 'package:Swarnim_Jain/functions/custom_tooltip.dart';
import 'package:Swarnim_Jain/functions/notifySnackBar.dart';
import 'package:Swarnim_Jain/screens/reponsive/responsive_contacts.dart';
import 'package:Swarnim_Jain/screens/reponsive/responstive_projects.dart';
import 'package:Swarnim_Jain/screens/widgets/navigate.dart';
import 'package:Swarnim_Jain/theme/theme.dart';
import 'package:timeline_tile/timeline_tile.dart';

class MobileBody extends StatefulWidget {
  const MobileBody({super.key});

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {
  String rurl =
      'https://github.com/swarnim992/swarnim992/blob/main/Swarnim%20Jain.pdf';

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: Column(
          //main column
          children: [
            //profile
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 215,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    // Expanded(
                    //   child: Image.asset(
                    //     'assets/swarnim.png',
                    //     fit: BoxFit.cover,
                    //     alignment: Alignment.center,
                    //     // scale: 3.0, // scale the image by a factor of 2
                    //   ),
                    // ),
                    // SizedBox(width: deviceWidth * 0.02),
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //name
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Text(
                                      "Swarnim Jain",
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.Name1,
                                        fontSize: 24,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    color: textStyles.B.color,
                                    Icons.verified_rounded,
                                    size:
                                        deviceWidth *
                                        mobile_containerStyle.iconSize,
                                  ),
                                ],
                              ),
                              SizedBox(height: deviceHeight * 0.02),
                              //heading
                              FittedBox(
                                fit: BoxFit.contain,
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

                          GestureDetector(
                            onTap: () {
                              downloadResume(rurl);
                              notifySnackBar(
                                context,
                                "Preparing my resume... it will download shortly.",
                              );
                            },
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 99, 99, 99),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              padding: const EdgeInsets.all(5),
                              margin: const EdgeInsets.only(bottom: 16),
                              width: deviceWidth * 0.25,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Icon(
                                        color: textStyles.B.color,
                                        Icons.description,
                                        size:
                                            deviceWidth *
                                            mobile_containerStyle.iconSize,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Text(
                                        "Resume",
                                        style: GoogleFonts.chakraPetch(
                                          textStyle: textStyles.B,
                                          fontSize: kDefaultFontSize,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //skilled in
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(
                  left: 16,
                  right: 16,
                  top: 16,
                  bottom: 16,
                ),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                // height: deviceHeight * (mobile_containerStyle.height * .9),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          size: deviceWidth * mobile_containerStyle.iconSize,
                        ),
                      ],
                    ),
                    SizedBox(height: deviceHeight * 0.015),
                    SizedBox(
                      height: 120,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[0].name,
                                    child: SvgPicture.asset(
                                      skills[0].svgPath,
                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[1].name,
                                    child: SvgPicture.asset(
                                      skills[1].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[2].name,
                                    child: SvgPicture.asset(
                                      skills[2].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[3].name,
                                    child: SvgPicture.asset(
                                      skills[3].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[4].name,
                                    child: SvgPicture.asset(
                                      skills[4].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[5].name,
                                    child: SvgPicture.asset(
                                      skills[5].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[6].name,
                                    child: SvgPicture.asset(
                                      skills[6].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[7].name,
                                    child: SvgPicture.asset(
                                      skills[7].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[8].name,
                                    child: SvgPicture.asset(
                                      skills[8].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[9].name,
                                    child: SvgPicture.asset(
                                      skills[9].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[10].name,
                                    child: SvgPicture.asset(
                                      skills[10].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: deviceWidth * mobile_SVGContainer.width,
                                //height: deviceWidth * mobile_SVGContainer.height,
                                child: Center(
                                  child: Custom_tooltip(
                                    message: skills[11].name,
                                    child: SvgPicture.asset(
                                      skills[11].svgPath,

                                      // color: textStyles.B.color,
                                      width:
                                          deviceWidth *
                                          mobile_SVGContainer.width,
                                      //height: deviceWidth * mobile_SVGContainer.height,
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
              ),
            ),
            //my projects
            CustomBox(
              isHover: true,
              hoverColor: ResumeColor,
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16),
                // margin: mobile_containerStyle.margin,
                height: 255 + 4.5,
                width: deviceWidth * mobile_containerStyle.width,
                // height: deviceHeight * (mobile_containerStyle.height * 1.2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        navigateTo(
                          context,
                          const ResponstiveProjects(initialIndex: 0),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                      text: 'Projects',
                                      style: GoogleFonts.chakraPetch(
                                        textStyle: textStyles.HeadingI,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Icon(
                              color: IconHClr,
                              Icons.arrow_outward_rounded,
                              size:
                                  deviceWidth * mobile_containerStyle.iconSize,
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 170,
                      child: ListView.builder(
                        // controller: pgController,
                        scrollDirection: Axis.horizontal,
                        itemCount: projects.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              navigateTo(
                                context,
                                ResponstiveProjects(initialIndex: index),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: EducationcontainerStyle.color,
                                    borderRadius:
                                        EducationcontainerStyle.borderRadius,
                                  ),
                                  height: mobile_ProjectContainer.height,
                                  width: mobile_ProjectContainer.width,
                                  padding: mobile_ProjectContainer.padding,
                                  margin: mobile_ProjectContainer.margin,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Icon(
                                        color: textStyles.B.color,
                                        Icons.arrow_right_rounded,
                                        size: 33,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              bottom: 35,
                                            ),
                                            child: Icon(
                                              color: textStyles.B.color,
                                              projects[index].icon,
                                              size: 42,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: deviceHeight * 0.01),
                                Container(
                                  // decoration:  BoxDecoration(
                                  //   color: EducationcontainerStyle.color,
                                  //   borderRadius: mobile_ProjectContainer.borderRadius,
                                  // ),
                                  height: 30,
                                  width: mobile_ProjectContainer.width,
                                  padding: const EdgeInsets.only(left: 5),
                                  margin: mobile_ProjectContainer.margin,
                                  child: Text(
                                    // minFontSize: 1,
                                    // maxFontSize: 15,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.chakraPetch(
                                      textStyle: textStyles.P2B,
                                      fontSize: 12,
                                    ),
                                    // overflow: TextOverflow.ellipsis,
                                    projects[index].title,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      margin: const EdgeInsets.all(0),
                      width: deviceWidth * mobile_containerStyle.widthButton,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Color.fromARGB(0, 26, 26, 26),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //My Edu
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 260,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            size: deviceWidth * mobile_containerStyle.iconSize,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 171,
                      child: ListView.builder(
                        // controller: pgController2,
                        scrollDirection: Axis.horizontal,
                        itemCount: Educations.length,
                        itemBuilder: (context, index) {
                          return TimelineTile(
                            axis: TimelineAxis.horizontal,
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
                                iconData: Icons.arrow_drop_down_rounded,
                              ),
                            ),
                            alignment: TimelineAlign.start,
                            endChild: Expanded(
                              flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Container(
                                  padding: EducationcontainerStyle.padding,
                                  margin: EducationcontainerStyle.margin,
                                  decoration: BoxDecoration(
                                    color: EducationcontainerStyle.color,
                                    borderRadius:
                                        EducationcontainerStyle.borderRadius,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Educations[index].institutionName,
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_H_B,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          children: [
                                            Text(
                                              Educations[index].startTime,
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_L,
                                              ),
                                            ),
                                            const Text(" - "),
                                            Text(
                                              Educations[index].endTime,
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_L,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Educations[index].department != ''
                                          ? FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              Educations[index].department
                                                  .replaceAll('\n', ''),
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_N,
                                              ),
                                            ),
                                          )
                                          : const Offstage(),
                                      Educations[index].grade != ''
                                          ? FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              Educations[index].grade,
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_N,
                                              ),
                                            ),
                                          )
                                          : const Offstage(),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //my exp
            CustomBox(
              borderRadius: mobile_containerStyle.borderRadius,
              margin: mobile_containerStyle.margin,
              child: Container(
                decoration: BoxDecoration(
                  color: mobile_containerStyle.color,
                  borderRadius: mobile_containerStyle.borderRadius,
                ),
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                // margin: mobile_containerStyle.margin,
                width: deviceWidth * mobile_containerStyle.width,
                height: 220,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            size: deviceWidth * mobile_containerStyle.iconSize,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: deviceHeight * 0.0148),
                    SizedBox(
                      height: 141,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: Experiences.length,
                        itemBuilder: (context, index) {
                          return TimelineTile(
                            axis: TimelineAxis.horizontal,
                            isFirst: Experiences[index].start,
                            // isFirst: true,
                            isLast: Experiences[index].end,
                            // isLast: false,
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
                                iconData: Icons.arrow_drop_down_rounded,
                              ),
                            ),
                            alignment: TimelineAlign.start,
                            endChild: Expanded(
                              // flex: 5,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 4),
                                child: Container(
                                  padding: EducationcontainerStyle.padding,
                                  margin: EducationcontainerStyle.margin,
                                  decoration: BoxDecoration(
                                    color: EducationcontainerStyle.color,
                                    borderRadius:
                                        EducationcontainerStyle.borderRadius,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Experiences[index].role,
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_H_B,
                                          ),
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              Experiences[index].startTime,
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_L,
                                              ),
                                            ),
                                            Text(
                                              ' - ',
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_L,
                                              ),
                                            ),
                                            Text(
                                              Experiences[index].endTime,
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_L,
                                              ),
                                            ),
                                            Text(
                                              ' • ',
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_L,
                                              ),
                                            ),
                                            Text(
                                              Experiences[index].duration,
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_L,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: Text(
                                          Experiences[index].companyName
                                              .replaceAll('\n', ''),
                                          style: GoogleFonts.chakraPetch(
                                            textStyle: textStyles.edu_P_N,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //contact me
            GestureDetector(
              onTap: () {
                navigateTo(context, const ResponsiveContacts());
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CustomBox(
                  isHover: true,
                  hoverColor: ResumeColor,
                  borderRadius: mobile_containerStyle.borderRadius,
                  margin: mobile_containerStyle.margin,
                  child: Container(
                    decoration: BoxDecoration(
                      color: containerStyle.color,
                      borderRadius: mobile_containerStyle.borderRadius,
                    ),
                    padding: mobile_containerStyle.padding,
                    // margin: mobile_containerStyle.margin,
                    width: deviceWidth * mobile_containerStyle.width,
                    height: 103,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AutoSizeText(
                                "Have some Questions?",
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
                              size:
                                  deviceWidth * mobile_containerStyle.iconSize,
                            ),
                          ],
                        ),
                        SizedBox(height: deviceHeight * 0.015),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
