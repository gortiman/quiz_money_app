import 'dart:ui' as ui;

import 'package:flutter/material.dart';

// Defining a custom painter class named RPSCustomPainter
class RPSCustomPainter extends CustomPainter{

  // Overriding the paint method of CustomPainter
  @override
  void paint(Canvas canvas, Size size) {


    // Creating a Paint object to define the style of drawing
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 66, 33, 243) // Setting color
      ..style = PaintingStyle.fill  // Setting fill style
      ..strokeWidth = 1;  // Setting stroke width

    // Creating a gradient shader for the Paint object
    paint0.shader = ui.Gradient.linear(Offset(size.width*0.50, size.height*0.28), // Starting point of gradient
        Offset(size.width*0.50, size.height*0.72),  // Ending point of gradient
        [Color(0xff006bc1),
          Color(0xff007fff),
          Color(0xff0092de)],   // List of colors for gradient
        [0.00,0.49,1.00]   // List of stops for gradient
    );

    // Creating a Path object to define the shape to be drawn
    Path path0 = Path();
    path0.moveTo(size.width*0.1675000,size.height*0.2842857); // Moving to initial point
    path0.lineTo(size.width*0.8325000,size.height*0.2842857); // Drawing line to next point
    path0.lineTo(size.width*0.9600000,size.height*0.5000000); // Drawing line to next point
    path0.lineTo(size.width*0.8341667,size.height*0.7128571); // Drawing line to next point
    path0.lineTo(size.width*0.1675000,size.height*0.7185714); // Drawing line to next point
    path0.lineTo(size.width*0.0400000,size.height*0.5014286); // Drawing line to next point

    // Drawing the defined path onto the canvas using the defined paint
    canvas.drawPath(path0, paint0);
  }

  // Overriding shouldRepaint method to control repainting behavior
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true; // Always repaint
  }
}