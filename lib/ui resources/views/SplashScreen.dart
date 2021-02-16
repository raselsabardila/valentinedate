import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/components/IndicatorSplashScreen.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

import 'HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    "Find your perfect",
                    style: titlePage,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Text>[
                      Text(
                        "partner",
                        style: titlePage.copyWith(color: primaryPink),
                      ),
                      Text(" with us", style: titlePage)
                    ],
                  ),
                  Container(
                    width: 270,
                    height: 270,
                    margin: EdgeInsets.symmetric(vertical: 30),
                    decoration: BoxDecoration(
                        color: primaryPink.withOpacity(0.2),
                        shape: BoxShape.circle),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      IndicatorSplashScreen(true),
                      SizedBox(width: 5),
                      IndicatorSplashScreen(false),
                      SizedBox(width: 5),
                      IndicatorSplashScreen(false)
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Log in and sosialize with\nmilionsof people",
                    style: smallTitle.copyWith(color: accentBlack),
                    textAlign: TextAlign.center,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                          top: MediaQuery.of(context).size.height / 18),
                      width: double.infinity,
                      height: 65,
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 16,
                              color: primaryPink.withOpacity(0.4),
                              offset: Offset(0, 8),
                            )
                          ],
                          color: primaryPink,
                          borderRadius: BorderRadius.circular(18)),
                      child: Center(
                        child: Text(
                          "Find someone",
                          style: smallTitle.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
