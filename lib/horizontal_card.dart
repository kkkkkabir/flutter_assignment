// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';

final Color _primaryTextColor = const Color(0xFF1A2E35);

class HorizontalJobCard extends StatelessWidget {
  const HorizontalJobCard({Key? key}) : super(key: key);

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
                      fontSize: 16,
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
                              TextStyle(fontSize: 8, color: _primaryTextColor),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
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
                padding: const EdgeInsets.only(
                  right: 10.0,
                ),
                child: Row(children: [
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
                  const SizedBox(
                    width: 60.0,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Apply Now",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)))),
                  )
                ]),
              ),
            ]),
          ),
        ));
  }
}
