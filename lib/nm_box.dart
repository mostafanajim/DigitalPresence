import 'package:flutter/material.dart';

Color mC = Colors.grey.shade100;
//Color mC = Colors.grey.shade900;
Color mCL = Colors.white;
//Color mCL = Colors.grey.shade900;
Color mCD = Colors.black.withOpacity(0.075);
//Color mCD = Colors.white.withOpacity(0.075);
Color mCC = Colors.green.withOpacity(0.65);
//Color mCC = Colors.green.withOpacity(0.65);
Color fCL = Colors.grey.shade600;
//Color fCL = Colors.white;

BoxDecoration nMbox =
    BoxDecoration(shape: BoxShape.circle, color: mC, boxShadow: [
  BoxShadow(
    color: mCD,
    offset: Offset(7, 7),
    blurRadius: 7,
  ),
  BoxShadow(
    color: mCL,
    offset: Offset(-7, -7),
    blurRadius: 7,
  ),
]);

BoxDecoration nMboxInvert = BoxDecoration(
    shape: BoxShape.rectangle,
    color: mC,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: Offset(7, 7),
        blurRadius: 7,
      ),
      BoxShadow(
        color: mCL,
        offset: Offset(-7, -7),
        blurRadius: 7,
      ),
    ]);
// BoxDecoration nMboxInvert = BoxDecoration(
//     borderRadius: BorderRadius.circular(15),
//     color: mCD,
//     boxShadow: [
//       BoxShadow(
//           color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
//     ]);

BoxDecoration nMbox_page =
    BoxDecoration(shape: BoxShape.rectangle, color: mC, boxShadow: [
  BoxShadow(
    color: mCD,
    offset: Offset(10, 10),
    blurRadius: 10,
  ),
  BoxShadow(
    color: mCL,
    offset: Offset(-10, -10),
    blurRadius: 10,
  ),
]);

BoxDecoration nMbox_page_Invert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
    ]);

BoxDecoration Cbox =
    BoxDecoration(shape: BoxShape.circle, color: mC, boxShadow: [
  BoxShadow(
    color: mCD,
    offset: Offset(7, 7),
    blurRadius: 7,
  ),
  BoxShadow(
    color: mCL,
    offset: Offset(-7, -7),
    blurRadius: 7,
  ),
]);

BoxDecoration CboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
    ]);
