import 'package:flutter/material.dart';

const Color kPalePeachColor = Color(0xFFFFE8D6);
const Color kMutedPinkColor = Color(0xFFCB997E);
const Color kLightOrangeColor = Color(0xFFFFBF69);
const Color kBrightOrangeColor = Color(0xFFFF9F1C);

const InputDecoration kAddTaskInputDecoration = InputDecoration(
  enabledBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: kMutedPinkColor),
  ),
  focusedBorder: UnderlineInputBorder(
    borderSide: BorderSide(color: Colors.black),
  ),
);
