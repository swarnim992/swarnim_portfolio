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
import 'package:Swarnim_Jain/functions/pageController.dart';
import 'package:Swarnim_Jain/screens/reponsive/responsive_contacts.dart';
import 'package:Swarnim_Jain/screens/reponsive/responstive_projects.dart';
import 'package:Swarnim_Jain/screens/widgets/navigate.dart';
import 'package:Swarnim_Jain/theme/theme.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TabletBody extends StatelessWidget {
  const TabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    String rurl =
        'https://github.com/swarnim992/swarnim992/blob/main/Swarnim%20Jain.pdf';

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return ScrollConfiguration(
      behavior: const ScrollBehavior().copyWith(scrollbars: false),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          //main column
          children: [
            //profile
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBox(
                  borderRadius: tablet_containerStyle.borderRadius,
                  margin: tablet_containerStyle.margin,
                  child: Container(
                    decoration: BoxDecoration(
                      color: tablet_containerStyle.color,
                      borderRadius: tablet_containerStyle.borderRadius,
                    ),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                    ),
                    // margin: tablet_containerStyle.margin,
                    width: deviceWidth * tablet_containerStyle.width,
                    height: tablet_containerStyle.row1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 15),
                                child: Image.asset(
                                  'assets/swarnim.png',
                                  fit: BoxFit.cover,
                                  width: deviceWidth * 0.14,
                                  alignment: Alignment.topCenter,
                                  // scale: 3.0, // scale the image by a factor of 2
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: deviceWidth * 0.02),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      FittedBox(
                                        fit: BoxFit.scaleDown,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "Swarnim",
                                                style: GoogleFonts.chakraPetch(
                                                  textStyle: textStyles.Name1,
                                                  fontSize: 20,
                                                ),
                                              ),
                                              TextSpan(
                                                text: " Jain",
                                                style: GoogleFonts.chakraPetch(
                                                  textStyle: textStyles.Name2,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        color: textStyles.B.color,
                                        Icons.verified_rounded,
                                        size:
                                            deviceWidth < 900
                                                ? tablet_containerStyle
                                                    .iconSizeS
                                                : tablet_containerStyle
                                                    .iconSizeL,
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

                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
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
                                    width: deviceWidth < 900 ? 100 : 120,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Icon(
                                              color: textStyles.B.color,
                                              Icons.description,
                                              size:
                                                  tablet_containerStyle
                                                      .iconSizeL,
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
                  borderRadius: tablet_containerStyle.borderRadius,
                  margin: tablet_containerStyle.marginCol2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: tablet_containerStyle.color,
                      borderRadius: tablet_containerStyle.borderRadius,
                    ),
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 16,
                      bottom: 16,
                    ),
                    // margin: tablet_containerStyle.marginCol2,
                    width: deviceWidth * tablet_containerStyle.width,
                    height: tablet_containerStyle.row1,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
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
                              size:
                                  deviceWidth < 900
                                      ? tablet_containerStyle.iconSizeS
                                      : tablet_containerStyle.iconSizeL,
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 170,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[0].name,
                                        child: SvgPicture.asset(
                                          skills[0].svgPath,
                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[1].name,
                                        child: SvgPicture.asset(
                                          skills[1].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[2].name,
                                        child: SvgPicture.asset(
                                          skills[2].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[3].name,
                                        child: SvgPicture.asset(
                                          skills[3].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[4].name,
                                        child: SvgPicture.asset(
                                          skills[4].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[5].name,
                                        child: SvgPicture.asset(
                                          skills[5].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[6].name,
                                        child: SvgPicture.asset(
                                          skills[6].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[7].name,
                                        child: SvgPicture.asset(
                                          skills[7].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[8].name,
                                        child: SvgPicture.asset(
                                          skills[8].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[9].name,
                                        child: SvgPicture.asset(
                                          skills[9].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    //color: tablet_SVGContainer.color,
                                    width:
                                        deviceWidth * tablet_SVGContainer.width,
                                    //height: deviceWidth * tablet_SVGContainer.height,
                                    child: Center(
                                      child: Custom_tooltip(
                                        message: skills[10].name,
                                        child: SvgPicture.asset(
                                          skills[10].svgPath,

                                          // color: textStyles.B.color,
                                          width:
                                              deviceWidth *
                                              tablet_SVGContainer.width,
                                          //height: deviceWidth * tablet_SVGContainer.height,
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
              ],
            ),
            //my projects
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomBox(
                  isHover: true,
                  hoverColor: ResumeColor,
                  borderRadius: tablet_containerStyle.borderRadius,
                  margin: tablet_containerStyle.margin,
                  child: Container(
                    decoration: BoxDecoration(
                      color: tablet_containerStyle.color,
                      borderRadius: tablet_containerStyle.borderRadius,
                    ),
                    padding: const EdgeInsets.only(top: 16),
                    // margin: tablet_containerStyle.margin,
                    //250
                    height: tablet_containerStyle.row2,
                    width: deviceWidth * tablet_containerStyle.width,
                    // height: deviceHeight * (tablet_containerStyle.height * 1.2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              navigateTo(
                                context,
                                const ResponstiveProjects(initialIndex: 0),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 16,
                                right: 16,
                              ),
                              child: Row(
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
                                        deviceWidth < 900
                                            ? tablet_containerStyle.iconSizeS
                                            : tablet_containerStyle.iconSizeL,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 0),
                          child: SizedBox(
                            height: 170,
                            child: ListView.builder(
                              controller: pgController,
                              scrollDirection: Axis.horizontal,
                              itemCount: projects.length,
                              itemBuilder: (context, index) {
                                return MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {
                                      int newIndex =
                                          (index ~/
                                              2); // Divides index by 2 and discards the remainder

                                      navigateTo(
                                        context,
                                        ResponstiveProjects(
                                          initialIndex: newIndex,
                                        ),
                                      );
                                    },
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color:
                                                EducationcontainerStyle.color,
                                            borderRadius:
                                                EducationcontainerStyle
                                                    .borderRadius,
                                          ),
                                          height:
                                              mobile_ProjectContainer.height,
                                          width: mobile_ProjectContainer.width,
                                          padding:
                                              mobile_ProjectContainer.padding,
                                          margin:
                                              mobile_ProjectContainer.margin,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
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
                                                    padding:
                                                        const EdgeInsets.only(
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
                                          padding: const EdgeInsets.only(
                                            left: 5,
                                          ),
                                          margin:
                                              mobile_ProjectContainer.margin,
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
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 7),
                        //prev_next
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 5, bottom: 3),
                        //   child: Container(
                        //     padding: const EdgeInsets.all(5),
                        //     width:
                        //         deviceWidth * tablet_containerStyle.widthButton,
                        //     decoration: const BoxDecoration(
                        //       borderRadius: BorderRadius.only(
                        //         topLeft: Radius.circular(10),
                        //         bottomRight: Radius.circular(10),
                        //       ),
                        //       // color: EducationcontainerStyle.color,
                        //     ),
                        //     child: Row(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         MouseRegion(
                        //           cursor: SystemMouseCursors.click,
                        //           child: GestureDetector(
                        //             onTap: () {
                        //               toPrevious(pgController);
                        //             },
                        //             child: Icon(
                        //               color: textStyles.B.color,
                        //               Icons.arrow_back_ios_new_rounded,
                        //               size:
                        //                   deviceWidth < 900
                        //                       ? tablet_containerStyle.iconSizeS
                        //                       : tablet_containerStyle.iconSizeL,
                        //             ),
                        //           ),
                        //         ),
                        //         // Icon(
                        //         //   color: textStyles.B.color,
                        //         //   Icons.linear_scale_outlined,
                        //         //   size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                        //         // ),
                        //         MouseRegion(
                        //           cursor: SystemMouseCursors.click,
                        //           child: GestureDetector(
                        //             onTap: () {
                        //               toNext(projects.length, pgController);
                        //             },
                        //             child: Icon(
                        //               color: textStyles.B.color,
                        //               Icons.arrow_forward_ios_rounded,
                        //               size:
                        //                   deviceWidth < 900
                        //                       ? tablet_containerStyle.iconSizeS
                        //                       : tablet_containerStyle.iconSizeL,
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
                //My Edu
                CustomBox(
                  borderRadius: tablet_containerStyle.borderRadius,
                  margin: tablet_containerStyle.marginCol2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: tablet_containerStyle.color,
                      borderRadius: tablet_containerStyle.borderRadius,
                    ),
                    padding: const EdgeInsets.only(top: 16),
                    // margin: tablet_containerStyle.marginCol2,
                    width: deviceWidth * tablet_containerStyle.width,
                    height: tablet_containerStyle.row2,
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
                                size:
                                    deviceWidth < 900
                                        ? tablet_containerStyle.iconSizeS
                                        : tablet_containerStyle.iconSizeL,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15 - 3),
                        SizedBox(
                          height: 171,
                          child: ListView.builder(
                            controller: pgController2,
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
                                endChild: Padding(
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
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
                              );
                            },
                          ),
                        ),
                        const Spacer(),
                        // Padding(
                        //   padding: const EdgeInsets.only(right: 5, left: 3),
                        //   child: Container(
                        //     padding: const EdgeInsets.all(5),
                        //     margin: const EdgeInsets.all(0),
                        //     width:
                        //         deviceWidth * tablet_containerStyle.widthButton,
                        //     decoration: const BoxDecoration(
                        //       borderRadius: BorderRadius.only(
                        //         topLeft: Radius.circular(10),
                        //         bottomRight: Radius.circular(10),
                        //       ),
                        //       // color: EducationcontainerStyle.color,
                        //     ),
                        //     child: Row(
                        //       crossAxisAlignment: CrossAxisAlignment.center,
                        //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //       children: [
                        //         MouseRegion(
                        //           cursor: SystemMouseCursors.click,
                        //           child: GestureDetector(
                        //             onTap: () {
                        //               toPrevious(pgController2);
                        //             },
                        //             child: Icon(
                        //               color: textStyles.B.color,
                        //               Icons.arrow_back_ios_new_rounded,
                        //               size:
                        //                   deviceWidth < 900
                        //                       ? tablet_containerStyle.iconSizeS
                        //                       : tablet_containerStyle.iconSizeL,
                        //             ),
                        //           ),
                        //         ),
                        //         // Icon(
                        //         //   color: textStyles.B.color,
                        //         //   Icons.linear_scale_outlined,
                        //         //   size: deviceWidth < 900 ? tablet_containerStyle.iconSizeS : tablet_containerStyle.iconSizeL,
                        //         // ),
                        //         MouseRegion(
                        //           cursor: SystemMouseCursors.click,
                        //           child: GestureDetector(
                        //             onTap: () {
                        //               toNext(Educations.length, pgController2);
                        //             },
                        //             child: Icon(
                        //               color: textStyles.B.color,
                        //               Icons.arrow_forward_ios_rounded,
                        //               size:
                        //                   deviceWidth < 900
                        //                       ? tablet_containerStyle.iconSizeS
                        //                       : tablet_containerStyle.iconSizeL,
                        //             ),
                        //           ),
                        //         ),
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            //my exp
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomBox(
                    borderRadius: tablet_containerStyle.borderRadius,
                    margin: tablet_containerStyle.margin,
                    child: Container(
                      decoration: BoxDecoration(
                        color: tablet_containerStyle.color,
                        borderRadius: tablet_containerStyle.borderRadius,
                      ),
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      // margin: tablet_containerStyle.margin,
                      width: deviceWidth * tablet_containerStyle.width,
                      height: tablet_containerStyle.row3,
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
                                  size:
                                      deviceWidth < 900
                                          ? tablet_containerStyle.iconSizeS
                                          : tablet_containerStyle.iconSizeL,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 15),
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
                                  endChild: Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Container(
                                      padding: EducationcontainerStyle.padding,
                                      margin: EducationcontainerStyle.margin,
                                      decoration: BoxDecoration(
                                        color: EducationcontainerStyle.color,
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
                                              Experiences[index].role
                                                  .replaceAll('\n', ''),
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_H_B
                                                    .copyWith(fontSize: 20),
                                              ),
                                            ),
                                          ),
                                          SizedBox(height: 5),
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
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_P_L,
                                                      ),
                                                ),
                                                Text(
                                                  ' - ',
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_P_L,
                                                      ),
                                                ),
                                                Text(
                                                  Experiences[index].endTime,
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_P_L,
                                                      ),
                                                ),
                                                Text(
                                                  ' • ',
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_P_L,
                                                      ),
                                                ),
                                                Text(
                                                  Experiences[index].duration,
                                                  style:
                                                      GoogleFonts.chakraPetch(
                                                        textStyle:
                                                            textStyles.edu_P_L,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          FittedBox(
                                            fit: BoxFit.scaleDown,
                                            child: Text(
                                              Experiences[index].companyName,
                                              style: GoogleFonts.chakraPetch(
                                                textStyle: textStyles.edu_P_N
                                                    .copyWith(fontSize: 16),
                                              ),
                                            ),
                                          ),
                                        ],
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
                  MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                      onTap: () {
                        navigateTo(context, const ResponsiveContacts());
                      },
                      child: CustomBox(
                        isHover: true,
                        hoverColor: ResumeColor,
                        borderRadius: containerStyle.borderRadius,
                        margin: tablet_containerStyle.marginCol2,
                        child: Container(
                          decoration: BoxDecoration(
                            color: containerStyle.color,
                            borderRadius: containerStyle.borderRadius,
                          ),
                          padding: tablet_containerStyle.padding,
                          // margin: tablet_containerStyle.marginCol2,
                          width: deviceWidth * tablet_containerStyle.width,
                          height: tablet_containerStyle.row3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: AutoSizeText(
                                      "Have some \nQuestions?",
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
                                        deviceWidth < 900
                                            ? tablet_containerStyle.iconSizeS
                                            : tablet_containerStyle.iconSizeL,
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
          ],
        ),
      ),
    );
  }
}
