import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

InputDecoration profileInputStyle = InputDecoration(
  prefixIcon: const Icon(null),
  hintText: profileHintName.localized,
  helperText: profileTextFieldHelpText.localized,
  helperStyle: roboto16TextStyle,
  hintStyle: const TextStyle(color: Colors.grey),
  filled: true,
  fillColor: gray,
  border: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 0.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.transparent, width: 0.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);

InputDecoration emailInputStyle = InputDecoration(
    prefixIcon: const Icon(Icons.person),
    hintText: hintText.localized,
    labelText: emailAddress.localized,
    floatingLabelStyle: null);

InputDecoration passwordInputStyle = InputDecoration(
  prefixIcon: const Icon(Icons.lock),
  hintText: passwordHintText.localized,
  labelText: password.localized,
);

InputDecoration searchInputStyle = InputDecoration(
  border: InputBorder.none,
  hintText: search.localized,
  hintStyle:
      roboto16TextStyle.copyWith(fontWeight: FontWeight.w400, color: white),
);
