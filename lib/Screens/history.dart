// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  final Color _primaryText = Color(0xFF1A2E35);

  final Color _primaryTextSelected = Color(0xFFC13131);
  final double _value = 4.0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Container(
                padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        // ignore: prefer_const_literals_to_create_immutables
                        text: const TextSpan(children: [
                      TextSpan(
                          text: "Applications\n",
                          style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "History.",
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black,
                          ))
                    ])),
                    SizedBox(
                      height: 30.0,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  RichText(
                                      text: TextSpan(children: [
                                    TextSpan(
                                        text: "Manager\n\n",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily:
                                                GoogleFonts.ubuntu().fontFamily,
                                            fontSize: 20,
                                            color: index == 0
                                                ? _primaryTextSelected
                                                : _primaryText)),
                                    TextSpan(
                                        text: "Badonia & Sons\n",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontFamily:
                                                GoogleFonts.ubuntu().fontFamily,
                                            fontSize: 10,
                                            color: index == 0
                                                ? _primaryTextSelected
                                                : _primaryText)),
                                    TextSpan(
                                        text: "Civil lines, Sagar",
                                        style: TextStyle(
                                            fontFamily:
                                                GoogleFonts.ubuntu().fontFamily,
                                            fontSize: 8,
                                            color: index == 0
                                                ? _primaryTextSelected
                                                : _primaryText))
                                  ])),
                                  Column(
                                    children: [
                                      Text(
                                        "\u002410-100/month",
                                        style: TextStyle(
                                            color: index == 0
                                                ? _primaryTextSelected
                                                : _primaryText),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      SizedBox(
                                          height: 25,
                                          width: 80,
                                          child: ElevatedButton(
                                            style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty.all(
                                                        index == 0
                                                            ? _primaryTextSelected
                                                            : _primaryText),
                                                shape:
                                                    MaterialStateProperty.all(
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0)))),
                                            onPressed: () {},
                                            child: Text("Full Time",
                                                style: TextStyle(fontSize: 11)),
                                          ))
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        index == 0 ? "Ongoing" : "Completed",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: index == 0
                                                ? _primaryTextSelected
                                                : _primaryText),
                                      ),
                                      if (index != 0)
                                        SizedBox(
                                          height: 20,
                                        ),
                                      if (index != 0)
                                        RatingStars(
                                          value: _value,
                                          starCount: 5,
                                          starSize: 12,
                                          valueLabelVisibility: false,
                                          starColor: _primaryText,
                                          starOffColor: const Color(0xffe7e8ea),
                                        )
                                      else
                                        SizedBox(
                                          width: 70,
                                        ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              SizedBox(
                                child: Divider(
                                  height: 200,
                                  color: Colors.grey,
                                  thickness: 0.2,
                                ),
                                height: 20.0,
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ))));
  }
}
