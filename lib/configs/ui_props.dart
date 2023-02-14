import 'package:flutter/material.dart';
import 'app_dimensions.dart';



abstract class UIProps {

  static Duration duration = const Duration(milliseconds: 280);
  static Duration duration2 = const Duration(milliseconds: 400);


  static EdgeInsets? btnPadMed;
  static EdgeInsets? btnPadSm;


  static double radius = 6.0;
  static BorderRadius? tabRadius;
  static BorderRadius? buttonRadius;
  static BorderRadius? cardRadius;
  static BoxDecoration? borderButton;


  static List<BoxShadow>? cardShadow;


  static BoxDecoration? boxCard;

  static init() {
    initRadius();
    initButtons();
    initShadows();
    initBoxDecorations();
  }

  static initRadius() {
    tabRadius = BorderRadius.circular(radius * 2);
    buttonRadius = BorderRadius.circular(radius);
    cardRadius = BorderRadius.circular(radius * 2);
  }

  static initButtons() {
    borderButton = BoxDecoration(
      borderRadius: UIProps.buttonRadius,
      border: Border.all(
        width: 1.4,
      ),
    );
    btnPadSm = EdgeInsets.symmetric(
      horizontal: AppDimensions.padding! * 2,
      vertical: AppDimensions.padding! * 1.0,
    );
    btnPadMed = EdgeInsets.symmetric(
      horizontal: AppDimensions.padding! * 3,
      vertical: AppDimensions.padding! * 1.5,
    );
  }

  static initShadows() {
    cardShadow = [
      const BoxShadow(
        blurRadius: 6,
      ),
    ];
  }

  static initBoxDecorations() {
    boxCard = BoxDecoration(
      borderRadius: cardRadius,
      boxShadow: cardShadow,
    );
  }
}
