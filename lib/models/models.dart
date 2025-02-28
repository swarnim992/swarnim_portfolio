import 'package:flutter/material.dart';

class Project {
  final String image;

  final String title;
  final String description;
  final IconData icon;
  final String flutterSvg;
  final String dartSvg;
  final String keyFeatures;
  final String githubLink;
  final String demoVideoLink;
  final String screenshot1;
  final String screenshot2;

  Project({
    required this.image,
    required this.title,
    required this.description,
    required this.icon,
    required this.flutterSvg,
    required this.dartSvg,
    required this.keyFeatures,
    required this.githubLink,
    required this.demoVideoLink,
    required this.screenshot1,
    required this.screenshot2,
  });
}

class Skill {
  final String svgPath;
  final String name;

  Skill({required this.svgPath, required this.name});
}

class Experience {
  final String companyName;
  final String role;
  final String startTime;
  final String endTime;
  final String workType;
  final String duration;
  final bool start;
  final bool end;

  Experience({
    required this.companyName,
    required this.role,
    required this.startTime,
    required this.endTime,
    required this.workType,
    required this.start,
    required this.end,
    required this.duration,
  });
}

class Education {
  final String institutionName;
  final String department;
  final String startTime;
  final String endTime; // Nullable end time
  final String grade;
  final bool start;
  final bool end; // Nullable grade

  Education({
    required this.institutionName,
    required this.department,
    required this.startTime,
    required this.endTime,
    required this.grade,
    required this.start,
    required this.end,
  });
}
