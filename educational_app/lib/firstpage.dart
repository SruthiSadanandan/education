import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class IndroductionPage extends StatefulWidget {
  const IndroductionPage({super.key});

  @override
  State<IndroductionPage> createState() => _IndroductionPageState();
}

class _IndroductionPageState extends State<IndroductionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: 500,
      height: 800,
      color: Colors.white,
      child: ListView(children: [
        Column(children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: 500,
                height: 320,

                // color: Colors.redAccent,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(7),
                      topLeft: Radius.circular(7)),
                  color: Colors.redAccent,
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Text(
                      "Welcome !",
                      style: TextStyle(
                          fontSize: 30,
                          //fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        maxRadius: 110,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ])
      ]),
    ));
  }
}
