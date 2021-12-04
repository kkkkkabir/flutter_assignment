// ignore_for_file: file_names, prefer_const_constructors, prefer_const_constructors_in_immutables
import 'package:flutter/material.dart';

class PostAd extends StatelessWidget {
  PostAd({Key? key}) : super(key: key);
  //final Color _buttonColor = Color(0xFF312651);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        RichText(
                            // ignore: prefer_const_literals_to_create_immutables
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Post An\n",
                              style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "Advertisement.",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                              )),
                        ])),
                        Center(
                          child: Image.asset(
                            'lib/images/advert.png',
                            width: 300,
                            height: 200,
                          ),
                        ),
                        RichText(
                            // ignore: prefer_const_literals_to_create_immutables
                            text: TextSpan(children: [
                          TextSpan(
                              text: "Reach more Customers and Employers!\n",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.black,
                              )),
                          TextSpan(
                              text: "Start by posting Your Service Ad.",
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ])),
                        SizedBox(
                          height: 30.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            children: [
                              TextField(
                                  decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Name of Your Service",
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                  decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Service Area",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 35,
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                              SizedBox(
                                height: 10,
                              ),
                              TextField(
                                  decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey[100],
                                border: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                enabledBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                disabledBorder: InputBorder.none,
                                hintText: "Field of Work",
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    size: 35,
                                  ),
                                  onPressed: () {},
                                ),
                              )),
                              SizedBox(
                                height: 100.0,
                              ),
                              Text(
                                "By Submitting This Advertisement, You Agree To Share Your Contact Details with Customers and Employers on the Hyre Me Platform.",
                                style: TextStyle(fontSize: 11),
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              SizedBox(
                                width: 400,
                                height: 60,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.red)),
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text(
                                          "POST ADVERTISEMENT",
                                          style: TextStyle(
                                              fontFamily: 'Aeonik-Light'),
                                        ),
                                        Icon(Icons.arrow_forward)
                                      ],
                                    )),
                              )
                            ],
                          ),
                        ),
                      ])),
            )));
  }
}
