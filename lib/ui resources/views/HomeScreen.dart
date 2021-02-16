import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/components/BoxIcon.dart';
import 'package:valentinedate/ui%20resources/components/ButtonIconCore.dart';
import 'package:valentinedate/ui%20resources/components/Dots.dart';
import 'package:valentinedate/ui%20resources/components/ItemSlidderAvatar.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';
import 'package:valentinedate/ui%20resources/views/ChatScreen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  BoxIcon(Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[Dots(), SizedBox(width: 3), Dots()],
                  )),
                  Text(
                    "For you",
                    style: smallTitle.copyWith(color: accentBlack),
                  ),
                  BoxIcon(Center(
                    child: Icon(
                      Icons.thumb_up_outlined,
                      color: accentBlack,
                      size: 18,
                    ),
                  ))
                ],
              ),
              SizedBox(height: 30),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 78,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ItemSlidderAvatar("Ariane", true,
                            "https://images.unsplash.com/photo-1485462537746-965f33f7f6a7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NXx8bW9kZWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ItemSlidderAvatar("Albert", true,
                            "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ItemSlidderAvatar("Percy_Jaky", true,
                            "https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Nnx8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ItemSlidderAvatar("Johnson", true,
                            "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bWVufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ItemSlidderAvatar("Babayaga", false,
                            "https://images.unsplash.com/photo-1519085360753-af0119f7cbe7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTR8fG1lbnxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        ItemSlidderAvatar("WitsonSky", false,
                            "https://images.unsplash.com/photo-1519058082700-08a0b56da9b4?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1lbnxlbnwwfHwwfA%3D%3D&auto=format&fit=crop&w=500&q=60"),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 400,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1580321187070-da8bdee36013?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGV2aWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                        fit: BoxFit.cover)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Rachel Sabardila",
                                style: smallTitle.copyWith(
                                    color: Colors.white, fontSize: 20)),
                            SizedBox(height: 2),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.gps_fixed_outlined,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 15,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "Distance(3km)",
                                  style: smallTitle.copyWith(
                                      color: Colors.white.withOpacity(0.8),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return ChatScreen();
                            }));
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            width: 42,
                            height: 55,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: accentBlue),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.chat_outlined,
                                  color: Colors.white.withOpacity(0.8),
                                  size: 18,
                                ),
                                Text("Chat",
                                    style: smallTitle.copyWith(
                                        color: Colors.white.withOpacity(0.8),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10))
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BoxIcon(Center(
                    child: Icon(
                      Icons.cancel,
                      size: 18,
                      color: accentBlack,
                    ),
                  )),
                  ButtonIconCore(Icons.thumb_up_alt_outlined),
                  BoxIcon(Center(
                    child: Icon(
                      Icons.bookmark,
                      size: 18,
                      color: accentBlack,
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
