// ignore_for_file: file_names, prefer_const_declarations, unrelated_type_equality_checks

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/horizontal_card.dart';
import 'package:flutter_assignment/vertical_card.dart';

final Color _primaryTextColor = const Color(0xFF1A2E35);

class SeekerHome extends StatefulWidget {
  const SeekerHome({Key? key}) : super(key: key);

  @override
  State<SeekerHome> createState() => _SeekerHomeState();
}

class _SeekerHomeState extends State<SeekerHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
              child: Container(
                  padding: const EdgeInsets.only(top: 40.0, left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              // ignore: prefer_const_literals_to_create_immutables
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Good Morning Pankaj,\n",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: _primaryTextColor,
                                )),
                            TextSpan(
                                text: "Find Your\n",
                                style: TextStyle(
                                    fontSize: 40,
                                    color: _primaryTextColor,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "Dream Job.",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: _primaryTextColor,
                                ))
                          ])),
                          const Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  AssetImage('lib/images/profile_app.png'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: [
                          Flexible(
                            child: TextField(
                                decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.grey[50],
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "search for a job...",
                              hintStyle: TextStyle(color: Colors.grey[350]),
                              prefixIcon: IconButton(
                                icon: const Icon(
                                  CupertinoIcons.search,
                                  size: 35,
                                ),
                                onPressed: () {},
                              ),
                            )),
                          ),
                          IconButton(
                              onPressed: () {},
                              iconSize: 40,
                              padding: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              icon: const Icon(
                                  CupertinoIcons.slider_horizontal_3))
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(
                              // ignore: prefer_const_literals_to_create_immutables
                              text: TextSpan(children: [
                            TextSpan(
                                text: "Popular ",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: _primaryTextColor,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: "Jobs",
                                style: TextStyle(
                                  fontSize: 22,
                                  color: _primaryTextColor,
                                )),
                          ])),
                          Padding(
                              padding: const EdgeInsets.only(right: 20.0),
                              child: TextButton(
                                onPressed: () {},
                                child: Text("Show all",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: _primaryTextColor,
                                        fontFamily: 'Aeonik-Light',
                                        fontWeight: FontWeight.w300)),
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0))),
                        child: SizedBox(
                            height: 210,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return const HorizontalJobCard();
                                })),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      RichText(
                          // ignore: prefer_const_literals_to_create_immutables
                          text: TextSpan(children: [
                        TextSpan(
                            text: "Jobs ",
                            style: TextStyle(
                              fontSize: 22,
                              color: _primaryTextColor,
                            )),
                        TextSpan(
                            text: "Near You.",
                            style: TextStyle(
                                fontSize: 22,
                                color: _primaryTextColor,
                                fontWeight: FontWeight.bold))
                      ])),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15.0),
                                  topRight: Radius.circular(15.0))),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return const VerticalJobCard();
                                }),
                          ),
                        ),
                      )
                    ],
                  )),
            )));
  }
}
