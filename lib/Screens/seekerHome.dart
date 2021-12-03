// ignore_for_file: file_names, prefer_const_declarations, unrelated_type_equality_checks

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
                        height: 20.0,
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
                            child: Text("Show all",
                                style: TextStyle(
                                    fontSize: 17,
                                    color: _primaryTextColor,
                                    fontFamily: 'Aeonik-Light')),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.red[50]),
                        child: SizedBox(
                            height: 210,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return const JobCard();
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
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Colors.red[50],
                          ),
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return const JobCard();
                                }),
                          ),
                        ),
                      )
                    ],
                  )),
            )));
  }
}

class JobCard extends StatelessWidget {
  const JobCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("Interior Carpet Designer",
                  style: TextStyle(
                      fontSize: 20,
                      color: _primaryTextColor,
                      fontWeight: FontWeight.bold)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 65,
                    height: 22,
                    decoration: BoxDecoration(
                        color: Colors.grey[50],
                        border:
                            Border.all(width: 1.0, color: _primaryTextColor),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0))),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Center(
                        child: Text(
                          "Full Time",
                          style:
                              TextStyle(fontSize: 10, color: _primaryTextColor),
                        ),
                      ),
                    ),
                  ),
                  RichText(
                    // ignore: prefer_const_literals_to_create_immutables
                    text: TextSpan(children: [
                      TextSpan(
                          text: "Salary ",
                          style: TextStyle(
                              fontSize: 13,
                              color: _primaryTextColor,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "upto ",
                          style: TextStyle(
                            fontSize: 13,
                            color: _primaryTextColor,
                            fontFamily: 'Aeonik-Light',
                          )),
                      TextSpan(
                          text: "\u20B915000/month",
                          style: TextStyle(
                            fontSize: 13,
                            color: _primaryTextColor,
                          )),
                    ]),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark,
                        color: Color(0xFFB4D9FE),
                        size: 35,
                      ))
                ],
              ),
              const Text("2+ Years Experience"),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          // ignore: prefer_const_literals_to_create_immutables
                          text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Badonia & Sons\n",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: _primaryTextColor,
                                  fontWeight: FontWeight.bold)),
                          TextSpan(
                              text: "Civil lines, Sagar",
                              style: TextStyle(
                                fontSize: 13,
                                color: _primaryTextColor,
                                fontFamily: 'Aeonik-Light',
                              )),
                        ],
                      )),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Apply Now",
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0)))),
                      )
                    ]),
              ),
            ]),
          ),
        ));
  }
}
