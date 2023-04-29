//imports
import 'package:flutter/material.dart';
import 'data_file.dart';
import 'package:url_launcher/url_launcher.dart';

//class for displaying the hyperlinks
class Method1Display extends StatelessWidget {

  const Method1Display ({Key? key}) : super(key: key);

  @override
  Widget build (BuildContext context) {

    return  Padding (

      padding: const EdgeInsets.all(8.0),

      child: Column(

        crossAxisAlignment:
        CrossAxisAlignment.start,

        children: <Widget>[

      const Text('Mercer University\n' ,
        textScaleFactor: 1.5,),

      urlText('https://mercer.edu'),

      addressText(
          "\n1501 Mercer University Dr,\n"
              "Macon, GA 31207\n",
          "1501+Mercer+University+Dr,+Macon,+GA+31207"),


      ElevatedButton(

          child: const Text('Call Mercer',
      textScaleFactor: 1.5),

      onPressed: ( ) async {

        String numberStr = 'tel:800-637-2378';
        Uri urlUri = Uri.parse(numberStr);

        try {
          await launchUrl(urlUri);
        } catch (ex) {
          throw 'Could not call number';
        }

      }, // onPressed

    ), //

    ], // <Widget>[]

    ), // Column,

    );  // Padding
  }

}  // end of Method1Display

