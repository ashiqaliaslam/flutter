import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void showEOLAlert(BuildContext context) {
  Alert(
    context: context,
    title: 'ALERT',
    desc: 'You already have reached to the end of list.',
  ).show();
}