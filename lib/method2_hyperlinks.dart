import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

const String _appTitle = 'Method 2 Hyperlinks';

class Method2Display extends StatelessWidget {
  const Method2Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(_appTitle),
      ), // AppBar
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            // First and second paragraphs
            _paragraphs1and2(),
            _paragraph3(), // Third paragraph
            _paragraph4(), // Fourth paragraph
          ], // <Widget>[]
        ), // ListView
      ), // Padding
    ); // Scaffold
  }
}

RichText _paragraphs1and2() {
  return RichText(
    text: TextSpan(
      style: const TextStyle(color: Colors.black),
      children: <TextSpan>[
        // Paragraph 1
        const TextSpan(
          text: "Welcome to",
        ), // TextSpan
        TextSpan(
          text: " Mercer University ",
          style: const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.underline,
          ), // TextStyle
          recognizer: TapGestureRecognizer()
            ..onTap = () => _displayWebsite("https://mercer.edu"),
        ), // TextSpan
        const TextSpan(
          text:
          "where students from all over the world discover a college experience "
              "that fits their unique needs, interests and goals.",
        ), // TextSpan
        _paragraph2(), // Paragraph 2
      ], // <TextSpan>[]
    ), // TextSpan
  ); // RichText
}

void _displayWebsite(String urlStr) async {
  Uri urlUri = Uri.parse(urlStr);
  try {
    await launchUrl(urlUri);
  } catch (ex) {
    throw 'Could not launch $urlStr';
  }
}

TextSpan _paragraph2() {
  return const TextSpan(
    text: "\nFrom school colors to annual events, "
        "Mercer is packed with proud traditions that "
        "have made the University what it is today.",
  );
}

RichText _paragraph3() {
  // Third paragraph
  return RichText(
    text: const TextSpan(
      style: TextStyle(color: Colors.black),
      children: <TextSpan>[
        TextSpan(
          text: "\nMercer University was founded in "
              "1833 in Penfield by Georgia Baptists. "
              "The school, under the leadership of "
              "Baptist minister and spiritual father "
              "Adiel Sherwood, was named for "
              "Jesse Mercer, a prominent Baptist "
              "leader and the first chair of "
              "the Mercer Board of Trustees. ",
        ), // TextSpan
      ], // <TextSpan>[]
    ), // TextSpan
  );
}

RichText _paragraph4() {
  // Fourth paragraph
  return RichText(
    text: TextSpan(
      style: const TextStyle(color: Colors.black),
      children: <TextSpan>[
        const TextSpan(
          text: "\nStep into a world of endless technological possibilities "
              "that is filled with diverse students and expert professionals "
              "who are eager to teach you invaluable knowledge. The Computer "
              "Science program is among the top majors in the country with a "
              "high demand for graduates. Located in the Willet Science center at ",
        ),
        TextSpan(
          text: "1501 Mercer University Dr, Macon, GA 31207",
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              launchMaps();
            },
        ),
        const TextSpan(
          text:
          " for more info visit ",
        ),
        TextSpan(
          text: "https://liberalarts.mercer.edu/academic-programs/majors-and-minors/computer-science/",
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              launchWebsite();
            },
        ),
        const TextSpan(
          text: " or call ",
        ),
        TextSpan(
          text: "478-301-2817",
          style: TextStyle(
            color: Colors.blue,
            decoration: TextDecoration.underline,
          ),
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              launchPhone();
            },
        ),
      ],
    ),
  );
}

void launchMaps() async {
  const url = 'https://www.google.com/maps?q=1501+Mercer+University+Dr,+Macon,+GA+31207';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchWebsite() async {
  const url = 'https://liberalarts.mercer.edu/academic-programs/majors-and-minors/computer-science/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

void launchPhone() async {
  const url = 'tel:+14783012817';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
