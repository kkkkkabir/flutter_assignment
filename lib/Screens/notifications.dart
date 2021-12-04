// ignore_for_file: file_names, prefer_const_constructors
import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  Notifications({Key? key}) : super(key: key);

  final Widget _notificationInfo = RichText(
      text: TextSpan(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
        TextSpan(
            text: "Your request for ",
            style: TextStyle(fontSize: 14, color: Colors.black)),
        TextSpan(
            text: "Manager ",
            style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: "at ", style: TextStyle(fontSize: 14, color: Colors.black)),
        TextSpan(
            text: "Badonia &\n sons ",
            style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: "has been shortlisted. ",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            )),
        TextSpan(
            text: "Please\n contact ",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            )),
        TextSpan(
            text: "9074770963 ",
            style: TextStyle(
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.bold)),
        TextSpan(
            text: "for further\n information. ",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
            )),
      ]));
  final Widget _viewButton = ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0))),
        backgroundColor: MaterialStateProperty.all(Colors.red),
      ),
      onPressed: () {},
      child: Text(
        "View",
        style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15),
      ));
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: const EdgeInsets.only(top: 40.0, left: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              RichText(
                  // ignore: prefer_const_literals_to_create_immutables
                  text: TextSpan(children: [
                TextSpan(
                    text: "Your\n",
                    style: TextStyle(
                        fontSize: 40,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "Notifications.",
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.black,
                    ))
              ])),
              SizedBox(
                height: 30,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Today",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 20.0),
                    child: Container(
                      height: 1.0,
                      width: MediaQuery.of(context).size.height * 0.32,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _notificationInfo,
                        Column(
                          children: [
                            SizedBox(
                              width: 80,
                              child: _viewButton,
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            RichText(
                                // ignore: prefer_const_literals_to_create_immutables
                                text: TextSpan(children: [
                              TextSpan(
                                  text: '9 ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey)),
                              TextSpan(
                                  text: 'min ago',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.grey))
                            ]))
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text("Older",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold)),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 20.0),
                    child: Container(
                      height: 1.0,
                      width: MediaQuery.of(context).size.height * 0.32,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _notificationInfo,
                        Column(
                          children: [
                            SizedBox(width: 80, child: _viewButton),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Yesterday",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
