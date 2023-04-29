//imports
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

const String _appTitle = 'Method 2 Hyperlinks';

class Method2Display extends StatelessWidget {

  const Method2Display ({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return  Scaffold(

      appBar: AppBar(
        title: const Text(_appTitle),
      ), // AppBar

      body: Padding(

        padding: const EdgeInsets.all(8.0),

        child: ListView(

          children: <Widget>[

            // First and second paragraphs
            _paragraphs1and2(),

            _paragraph3(),      // Third paragraph

            // You can add other widgets here
          ],  // <Widget>[]

        ), //  ListView

      ), // Padding
    );   // Scaffold
  }
}  // end of Method2Display

//paragraphs 1 and 2
RichText _paragraphs1and2 (){

  return RichText (

    text:  TextSpan(

      style: const TextStyle(color:
      Colors.black),
      children: <TextSpan>[

    // Paragraph 1
    const TextSpan(
    text: "Welcome to",
    ),  // TextSpan

    TextSpan(
        text: "Mercer University ",
    style: const TextStyle(
    color: Colors.blue,
    fontWeight: FontWeight.bold,
        decoration:
        TextDecoration.underline,
    ),  // TextStyle

    recognizer: TapGestureRecognizer()
      ..onTap = () =>
          _displayWebsite ("https://mercer.edu"),

  ),    // TextSpan

  const TextSpan(
  text:
  "where students from all over the "
  "world discover a college experience "
  "that fits their unique needs, "
  "interests and goals.",
  ),  // TextSpan

  _paragraph2(),     // Paragraph 2

  ],  // <TextSpan>[]

  ),   // TextSpan
  );   // RichText
  }      // end of _paragraghs1and2()

// CONTINUE ON THE NEXT PAGE
void _displayWebsite (String urlStr) async{

  Uri urlUri = Uri.parse(urlStr);
  try {
    await launchUrl(urlUri);
  } catch (ex) {

    throw 'Could not launch $urlStr';
  }

}   // end of _displayWebsite( … )


TextSpan _paragraph2 (){

  return const TextSpan(

    text: "\nFrom school colors to annual events, "
        "Mercer is packed with proud traditions that "
        "have made the University what it is today.",
  );
}    // end of _paragraph2()

//paragraph3
RichText _paragraph3 (){

  // Third paragraph
  return RichText(

    text: const  TextSpan(

        style: TextStyle(color: Colors.black),

        children: <TextSpan>[

          TextSpan(
            text:
            "\nMercer University was founded in "
                "1833 in Penfield by Georgia Baptists. "
                "The school, under the leadership of "
                "Baptist minister and spiritual father "
                "Adiel Sherwood, was named for "
                "Jesse Mercer, a prominent Baptist "
                "leader and the first chair of "
                "the Mercer Board of Trustees. ",
          ),  // TextSpan

        ]     // <TextSpan>[]

    ),        // TextSpan

  );

}    // end of _paragraph3()

