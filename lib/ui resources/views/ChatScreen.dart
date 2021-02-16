import 'package:flutter/material.dart';
import 'package:valentinedate/ui%20resources/components/BoxIcon.dart';
import 'package:valentinedate/ui%20resources/components/BubbleChat.dart';
import 'package:valentinedate/ui%20resources/components/ButtonIconCore.dart';
import 'package:valentinedate/ui%20resources/styles/Style.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: PreferredSize(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              width: MediaQuery.of(context).size.width,
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_rounded,
                      color: accentBlack,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1580321187070-da8bdee36013?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8ZGV2aWx8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
                            fit: BoxFit.cover)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 10,
                          height: 10,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.yellow,
                              border: Border.all(
                                  style: BorderStyle.solid,
                                  color: Colors.white,
                                  width: 1)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Rachel sabardila asdasdas",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: smallTitle.copyWith(color: accentBlack),
                        ),
                        Text(
                          "2h ago",
                          style: smallTitle.copyWith(
                              color: accentBlack.withOpacity(0.6),
                              fontWeight: FontWeight.w500,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  BoxIcon(Icon(
                    Icons.mail_outline_rounded,
                    color: accentBlack,
                    size: 18,
                  )),
                  SizedBox(width: 10),
                  BoxIcon(Icon(
                    Icons.video_call_outlined,
                    color: accentBlack,
                    size: 18,
                  ))
                ],
              ),
            ),
            preferredSize: Size.fromHeight(75),
          ),
          body: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.43,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              child: ListView(
                children: <Widget>[
                  BubbleChat(false, "Lorem ipsum dolor sit amet"),
                  BubbleChat(true,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                  BubbleChat(false, "Lorem ipsum dolor sit amet"),
                  BubbleChat(
                      false, "Lorem ipsum dolor sit amet, consectetur elit."),
                  BubbleChat(false, "Lorem ipsum dolor sit amet"),
                  BubbleChat(true,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                  BubbleChat(false, "Lorem ipsum dolor sit amet"),
                  BubbleChat(
                      false, "Lorem ipsum dolor sit amet, consectetur elit."),
                  BubbleChat(false, "Lorem ipsum dolor sit amet"),
                  BubbleChat(true,
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit."),
                  BubbleChat(false, "Lorem ipsum dolor sit amet"),
                  BubbleChat(
                      false, "Lorem ipsum dolor sit amet, consectetur elit."),
                ],
              ),
            ),
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: ButtonIconCore(Icons.mic_none_rounded),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        ));
  }
}
