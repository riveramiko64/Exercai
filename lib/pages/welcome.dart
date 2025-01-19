import 'package:flutter/material.dart';
import 'package:practicedb/pages/Whatisyour_Goal_page.dart';

class WelcomeUser extends StatefulWidget {
  const WelcomeUser({super.key});

  @override
  State<WelcomeUser> createState() => _WelcomeUserState();
}

class AppColor {
  static const Color primary = Color(0xFF9575CD);
  static const Color shadow = Color(0xFF5E35B1);
  static const Color solidtext = Color.fromARGB(255, 52, 28, 102);
  static const Color buttonPrimary = Color.fromARGB(255, 51, 51, 51);
  static const Color buttonSecondary = Color.fromARGB(255, 146, 146, 146);
  static const Color textwhite = Color.fromARGB(255, 219, 219, 219);
  static const Color yellowtext = Color.fromARGB(255, 223, 248, 0);
  static const Color purpletext = Color.fromARGB(255, 179, 160, 255);
  static const Color backgroundgrey = Color.fromARGB(255, 19, 19, 19) ;
}

class _WelcomeUserState extends State<WelcomeUser> {
  String dropdowngender = 'Male';
  TextEditingController gender = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundgrey,
      body: Container(
        child: ListView(
          children: [
            upperTextSection(),
            TextFieldSection(),
            SizedBox(height: 70,),
            primarybutton(),
          ],
        ),
      ),
    );
  }

  Container TextFieldSection() {
    return Container(
            decoration: BoxDecoration(color: AppColor.primary, ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          "Let's complete your profile",
                          style: TextStyle(
                              color: AppColor.yellowtext,
                              fontSize: 28,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "it will help us to know more about you!",
                          style: TextStyle(
                              color: AppColor.textwhite,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25),
                  child: Container(
                    child: Column(
                      children: [
                        // TextField Date of Birth
                        Container(
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: AppColor.shadow.withOpacity(0.5),
                                blurRadius: 40,
                                spreadRadius: 0.0)
                          ]),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.calendar_month_outlined),
                              hintText: 'Date of Birth',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),

                        SizedBox(
                          height: 25,
                        ),
                        // TextField Gender

                        Container(
                          height: 50,
                          decoration: BoxDecoration(boxShadow: [
                            BoxShadow(
                                color: AppColor.primary.withOpacity(0.5),
                                blurRadius: 40,
                                spreadRadius: 0.0)
                          ]),
                          child: TextField(
                            controller: gender,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.female_outlined),
                              suffix: DropdownButton(
                                  items: const [
                                    DropdownMenuItem(
                                        child: Text("Female"),
                                        value: 'Female'),
                                    DropdownMenuItem(
                                        child: Text("Male"), value: 'Male'),
                                  ],
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      gender.text = newValue!;
                                    });
                                  }),
                              hintText: 'Click to Enter Gender',
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              filled: true,
                              fillColor: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),

                        //Textfield kg
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: AppColor.shadow.withOpacity(0.5),
                                      blurRadius: 40,
                                      spreadRadius: 0.0)
                                ]),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon:
                                        Icon(Icons.monitor_weight_outlined),
                                    hintText: 'Weight (kg)',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 32, 32, 32),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: Text(
                                "kg",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: AppColor.yellowtext),
                              )),
                            )
                          ],
                        ),

                        SizedBox(
                          height: 30,
                        ),
                        //Textfield kg
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(boxShadow: [
                                  BoxShadow(
                                      color: AppColor.shadow.withOpacity(0.5),
                                      blurRadius: 40,
                                      spreadRadius: 0.0)
                                ]),
                                child: TextField(
                                  decoration: InputDecoration(
                                    prefixIcon:
                                        Icon(Icons.height_outlined),
                                    hintText: 'Height (cm)',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                    filled: true,
                                    fillColor: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 32, 32, 32),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Center(
                                  child: Text(
                                "cm",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: AppColor.yellowtext),
                              )),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 60,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
  }
  GestureDetector primarybutton() {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => WhatGoalPage()));
      },
      child: Container(
        child: Column(
          children: [
            Container(
              height: 55,
              width: 150,
              decoration: BoxDecoration(
                  color: AppColor.buttonPrimary.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: 2, color: AppColor.buttonSecondary),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.buttonSecondary.withOpacity(0.7),
                        blurRadius: 90,
                        spreadRadius: 0.1)
                  ]),
              child: Center(
                  child: Text(
                "Next >",
                style: TextStyle(
                    color: AppColor.textwhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
            ),
          ],
        ),
      ),
    );
  }

  Container upperTextSection() {
    return Container(
      height: 250,
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 185,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "Welcome, User",
              style: TextStyle(
                  color: AppColor.primary,
                  fontSize: 43,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
