//imports
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:io';

//widget for urlText
Widget urlText(String urlStr) {

  return GestureDetector(

    child: Text(urlStr,
      style: const TextStyle(color: Colors.blue,
          decoration:
          TextDecoration.underline ),
      textScaleFactor: 1.5,

    ), // Text

    onTap: () => _displayWebsite(urlStr),

  ); // GestureDetector
}  // urlText

//display website function
void _displayWebsite (String urlStr) async{

  Uri urlUri = Uri.parse(urlStr);

  try {
    await launchUrl(urlUri);
  } catch (ex) {

    throw 'Could not launch $urlStr';
  }
}   // end of _displayWebsite(…)

//widget for address text
Widget addressText (String addr, String addrFormat) {

  return GestureDetector(

    child: Text(addr,
    style: const TextStyle(color: Colors.blue,
    decoration:
    TextDecoration.underline ),
    textScaleFactor: 1.5,

  ), // Text

  onTap: () => _openMap(addrFormat),
  ); // GestureDetector

}   // end of addressText

//open map function for the map when user selects a address
_openMap (String addrFormat) {

  String urlStr;

  if (Platform.isIOS){
    urlStr =
    'http://maps.apple.com/?address=$addrFormat';
  } else {     // Platform.isAndroid
    urlStr =
    'https://www.google.com/maps/search/?api=1&query='

        '$addrFormat';
  }

  //display website function
  _displayWebsite(urlStr);
}   //   end of _openMap()


/*   todo: Class Exercise

Widget phoneText ( ... ) {
    // …
}  // phoneText

*/

//    end of data_file.dart

