import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color blueColor = Color(0xFF215CAE);
Color darkBlueColor = Color(0xFF102748);
Color lightBlueColor = Color(0xFFBFE1F1);
Color subtleBlueColor = Color(0xFFF5FAFF);
Color redColor = Color(0xFFD80000);
Color orangeColor = Color(0xFFFBA13A);
Color pinkColor = Color(0xFFFF77C1);
Color whiteColor = Color(0xFFFFFFFF);
Color blackColor = Color(0xFF000000);

double edge = 16;

TextStyle darkBlueTextStyle = GoogleFonts.montserrat(
  color: darkBlueColor,
);
TextStyle blueTextStyle = GoogleFonts.montserrat(
  color: blueColor,
);
TextStyle whiteTextStyle = GoogleFonts.montserrat(
  color: whiteColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w700;
FontWeight bold = FontWeight.w800;
FontWeight extraBold = FontWeight.w900;

BoxShadow themeShadow = BoxShadow(
  color: blackColor.withOpacity(0.25),
  blurRadius: 10.0,
  spreadRadius: 0,
);
