import 'package:flutter/material.dart';
import 'package:hobbydb_vision/src/core/localization.dart';
import 'package:hobbydb_vision/src/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 235, 170, 67),
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Padding(padding: EdgeInsets.only(top: 100)),
            Center(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: AssetImage('assets/logo.png'),
                      width: 250,
                      height: 87,
                      fit: BoxFit.fill,
                    ))),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 18)),
                  CustomButton(
                      onPressed: () => {},
                      text: AppLocalizations.of(context).launchScanner),
                  Padding(padding: EdgeInsets.only(bottom: 18)),
                  CustomButton(
                      onPressed: () => {},
                      text: AppLocalizations.of(context).createCustomQR),
                  Padding(padding: EdgeInsets.only(bottom: 18)),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomButton(
                        onPressed: () =>
                            {_launchURL('https://youtu.be/LvqYXpCzTVI')},
                        text: AppLocalizations.of(context).help),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 10)),
                    CustomButton(
                        onPressed: () =>
                            {_launchURL('https://blog.hobbydb.com/')},
                        text: AppLocalizations.of(context).blog),
                  ]),
                  Padding(
                    padding: EdgeInsets.only(bottom: 24),
                  )
                ],
              ),
            )
          ]),
        ));
  }

  _launchURL(url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
