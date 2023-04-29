import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

Widget urlText(String urlStr, {String? text}) {
  return GestureDetector(
    child: Text(
      text ?? urlStr,
      style: const TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
      textScaleFactor: 1.5,
    ),
    onTap: () => _displayWebsite(urlStr),
  );
}

void _displayWebsite(String urlStr) async {
  Uri urlUri = Uri.parse(urlStr);

  try {
    await launchUrl(urlUri);
  } catch (ex) {
    throw 'Could not launch $urlStr';
  }
}

Widget addressText(String addr, String addrFormat) {
  return GestureDetector(
    child: Text(
      addr,
      style: const TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
      textScaleFactor: 1.5,
    ),
    onTap: () => _openMap(addrFormat),
  );
}

void _openMap(String addrFormat) {
  String urlStr;

  if (Platform.isIOS) {
    urlStr = 'http://maps.apple.com/?address=$addrFormat';
  } else { // Platform.isAndroid
    urlStr =
    'https://www.google.com/maps/search/?api=1&query=' '$addrFormat';
  }

  _displayWebsite(urlStr);
}

Widget phoneText(String phoneStr, {String? text}) {
  return GestureDetector(
    child: Text(
      text ?? phoneStr,
      style: const TextStyle(
        color: Colors.blue,
        decoration: TextDecoration.underline,
      ),
      textScaleFactor: 1.5,
    ),
    onTap: () => _callNumber(phoneStr),
  );
}

void _callNumber(String numberStr) async {
  Uri urlUri = Uri.parse(numberStr);

  try {
    await launchUrl(urlUri);
  } catch (ex) {
    throw 'Could not call $numberStr';
  }
}
