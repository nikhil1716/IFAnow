import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../widgets/CustomDrope.dart';
import '../widgets/buildtext.dart';
import '../widgets/radioBtn.dart';
import '../widgets/radiobtnui.dart';
import '../widgets/tabbar.dart';
import 'maincomponentController.dart';

class Maincomponent extends StatefulWidget {
  const Maincomponent({Key? key}) : super(key: key);
  @override
  State<Maincomponent> createState() => _MaincomponentState();
}

class _MaincomponentState extends State<Maincomponent> {
  String? New;
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<mainComponentController>();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text("Sample"),
        centerTitle: true,
      ),
      body: Container(
        color: Color.fromARGB(255, 243, 240, 240),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                iccCard(),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "INVESTOR NAME",
                        style: TextStyle(fontSize: 15),
                      ),
                      BuildCustomDropDown<String>(
                        hindtext: "Select Name",
                        value: controller.selectNames,
                        items: controller.names
                            .map<DropdownMenuItem<String>>((String names) {
                          return DropdownMenuItem<String>(
                            value: names,
                            child: BuildText(names),
                          );
                        }).toList(),
                        onChanged: (value) {},
                        labelText: "",
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // Customecard()
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            color: Color.fromARGB(255, 67, 206, 138),
                          ),
                          // color: Color.fromARGB(255, 67, 206, 138),
                          padding: EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "LAST CLOSING NAV",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                  Text("23/06/2022",
                                      style: TextStyle(color: Colors.white))
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("36.27",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                            ],
                          )),
                      Padding(
                        padding: EdgeInsets.only(
                            left: 20, right: 20, top: 10, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "FOLIO NUMBER",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400),
                            ),
                            Text("74267834629",
                                style: TextStyle(color: Colors.black))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  height: 100,
                  width: double.infinity,
                  child: CustomSwitchState(),
                ),
                amountCard(),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 25),
                        child: Text(
                          "Folio",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      RadioListTile(
                        activeColor: Colors.greenAccent[700],
                        title: Text(
                          "Existing",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        ),
                        value: "Existing",
                        groupValue: New,
                        onChanged: (value) {
                          setState(() {
                            New = value.toString();
                          });
                        },
                      ),
                      RadioListTile(
                        activeColor: Colors.greenAccent[700],
                        title: Text(
                          "New",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w800),
                        ),
                        value: "New",
                        groupValue: New,
                        onChanged: (value) {
                          setState(() {
                            New = value.toString();
                          });
                        },
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white),
                        child: BuildCustomDropDown<String>(
                          hindtext: "Folio Number",
                          value: controller.selectNames,
                          items: controller.namestype
                              .map<DropdownMenuItem<String>>((String names) {
                            return DropdownMenuItem<String>(
                              value: names,
                              child: BuildText(names),
                            );
                          }).toList(),
                          onChanged: (value) {},
                          labelText: "",
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Opacity(
          opacity: 0.5,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                primary: Color.fromARGB(255, 12, 12, 12),
                fixedSize: Size(MediaQuery.of(context).size.width - 32, 50)),
            onPressed: () {},
            child: Text(
              'Next',
              style: TextStyle(
                  // height: 21,
                  fontSize: ScreenUtil().setSp(18),
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class iccCard extends StatelessWidget {
  const iccCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        color: Color.fromARGB(255, 243, 240, 240),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    //set border radius to 50% of square height and width
                    image: DecorationImage(
                      image: AssetImage("assets/f1.png"),
                      fit: BoxFit.cover, //change image fill type
                    ),
                  ),
                ),
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 0, bottom: 18),
                  child: Text(
                    "ICIC Prudential Smallcap \nIndex Fund",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Text(""),

                Container(
                  margin: const EdgeInsets.only(top: 0, bottom: 18),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 80.w,
                      ),
                      SmallCard(
                        name: "IDCW",
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      SmallCard(
                        name: "SMALL CAP",
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      SmallCard(
                        name: "EQUITY",
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget amountCard() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Enter Amount",
          style: TextStyle(
            fontSize: 15.sp,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "₹ 5,000",
          style: TextStyle(
              fontSize: 50.sp, fontWeight: FontWeight.w800, letterSpacing: 1.1),
        )
      ],
    ),
  );
}

class SmallCard extends StatelessWidget {
  const SmallCard({
    Key? key,
    required this.name,
  }) : super(key: key);

  final name;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 5),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
