// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          backgroundColor: Colors.grey[800],
          centerTitle: true,
          title: const Text('RVB'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/Me.jpg'),
              radius: 50.0,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              'Rafael Vieira Brancaccio',
              style: TextStyle(
                fontFamily: 'ShareTechMono',
                color: Colors.white,
                fontSize: 30.0,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              'Software Developer',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 160.0,
              child: Divider(
                color: Colors.white,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: TextButton(
                onPressed: () async {
                  Uri emailUrl = Uri.parse('mailto:rafaelvbrancaccio@gmail.com');
                  if (!await canLaunchUrl(emailUrl)) {
                    throw 'Could not launch $emailUrl';
                  } else {
                    launchUrl(emailUrl);
                  }
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0.0),
                ),
                child: Card(
                  color: Colors.deepPurple[200],
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.envelope,
                      color: Colors.white,
                    ),
                    title: Text(
                      'rafaelvbrancaccio@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: TextButton(
                onPressed: () async {
                  Uri whatsappUrl = Uri.parse('whatsapp://send?phone=+5511995551378');
                  if (!await canLaunchUrl(whatsappUrl)) {
                    throw 'Could not launch $whatsappUrl';
                  } else {
                    launchUrl(whatsappUrl);
                  }
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(0.0),
                ),
                child: Card(
                  color: Colors.green[200],
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.white,
                    ),
                    title: Text(
                      '+55 (11) 99555-1378',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
