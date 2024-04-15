import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

ButtonStyle customElevatedButtonStyle = const ButtonStyle(
  minimumSize: MaterialStatePropertyAll(Size(350.0, 51.0)),
  shape: MaterialStatePropertyAll(RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15)),
  )),
  textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 16)),
  foregroundColor: MaterialStatePropertyAll(white),
  backgroundColor: MaterialStatePropertyAll(purple),
);
