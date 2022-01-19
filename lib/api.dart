import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_apk/user_home.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

_launchURLBrowser() async {
  const url = 'https://www.mocky.io/v2/5dfccffc310000efc8d2c1ad';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}