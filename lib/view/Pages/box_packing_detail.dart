// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/manifest_list.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

// ignore: must_be_immutable
class BoxPackingDetail extends StatefulWidget {
  const BoxPackingDetail({Key? key}) : super(key: key);

  @override
  State<BoxPackingDetail> createState() => _BoxPackingDetailState();
}

class _BoxPackingDetailState extends State<BoxPackingDetail> {
  dynamic camera;

  @override
  void initState() {
    super.initState();
  }

  final fontSize = 12.00;

  Widget commonText(
    String text, {
    Color color = darkBlue,
    double fontSize = 10.00,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: color,
      ),
    );
  }

  int numberofPages = 10;

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Pages_AppBar(),
        ),
        bottomNavigationBar: const BottomNavigation(),
        body: Column(
          children: [
            SearchCard(
              heading: 'Box Packing',
              searchText: 'Search',
            ),
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: fontSize * .5,
                              ),
                              commonText('Type *', fontSize: 10),
                              SizedBox(
                                height: fontSize * 2.5,
                              ),
                              commonText('Scan Item', fontSize: 10),
                              SizedBox(
                                height: fontSize * 2.5,
                              ),
                              commonText('Box Weight', fontSize: 10)
                            ],
                          ),
                          //TextFields Column
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: fontSize * 2,
                                width: fontSize * 8,
                                decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(
                                          left: 5, bottom: 2, top: 2),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: "Sales Order",
                                      hintStyle: TextStyle(
                                          fontSize: fontSize, height: 0.1)),
                                ),
                              ),
                              SizedBox(
                                height: fontSize * 1.5,
                              ),
                              InkWell(
                                child: Container(
                                  height: fontSize * 2,
                                  width: fontSize * 8,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: greyColor,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(''),
                                ),
                                onTap: () {
                                  // Show Dialog
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return ScanPopDialog(
                                          hintTitle: 'Enter Item No.',
                                          title: 'Scan Item',
                                          text: '',
                                        );
                                      });
                                },
                              ),
                              SizedBox(
                                height: fontSize * 1.5,
                              ),
                              //Box Weight Dialog Box PopUp
                              InkWell(
                                child: Container(
                                  height: fontSize * 2,
                                  width: fontSize * 8,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: greyColor,
                                    ),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(''),
                                ),
                                onTap: () {
                                  //Show Dialog
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return PopDialog(
                                          hintTitle: 'Enter Box Weight',
                                          title: 'Box Weight',
                                          text: '',
                                        );
                                      });
                                },
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 5,
                              ),
                              commonText('Doc No. *', fontSize: 10),
                              SizedBox(
                                height: fontSize * 2.5,
                              ),
                              commonText('Qty', fontSize: 10)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: fontSize * 2,
                                width: fontSize * 8,
                                decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(
                                          left: 5, bottom: 2, top: 2),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: "445",
                                      hintStyle: TextStyle(
                                          fontSize: fontSize, height: 0.1)),
                                ),
                              ),
                              SizedBox(
                                height: fontSize * 1.5,
                              ),
                              Container(
                                height: fontSize * 2,
                                width: 40,
                                decoration: BoxDecoration(
                                    border: Border.all(color: greyColor),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5))),
                                child: TextField(
                                  decoration: InputDecoration(
                                      contentPadding: EdgeInsets.only(
                                          left: 5, bottom: 2, top: 2),
                                      border: const OutlineInputBorder(
                                          borderSide: BorderSide.none),
                                      hintText: "10",
                                      hintStyle: TextStyle(
                                          fontSize: fontSize, height: 0.1)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //Button
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0, bottom: 10),
                        child: SizedBox(
                          width: 76,
                          height: 25,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(236, 100, 42, 1),
                              ),
                              onPressed: () {},
                              child: commonText('Next',
                                  color: Colors.white, fontSize: 14)),
                        ),
                      ),
                    ],
                  )),
            ),
            SizedBox(
                width: w,
                height: h * .5,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  commonText('I-PP100821', fontSize: 12),
                                  SizedBox(height: fontSize / 2),
                                  Text(
                                    "Item Name",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: fontSize / 2),
                                  Row(
                                    children: [
                                      commonText(
                                        'Lot No. : ',
                                      ),
                                      InkWell(
                                        child: Text(
                                          "stackerbee",
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        onTap: () {
                                          //Show Dialog
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return PopDialog(
                                                  hintTitle: 'Enter Lot No.',
                                                  title: 'Lot No.',
                                                  text: '',
                                                );
                                              });
                                        },
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: fontSize / 2,
                                  ),
                                  Row(
                                    children: [
                                      commonText(
                                        'Serial No. : ',
                                      ),
                                      InkWell(
                                        child: Text(
                                          "001",
                                          style: TextStyle(
                                              color: textColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        onTap: () {
                                          // //Show Dialog
                                          showDialog(
                                              context: context,
                                              builder: (context) {
                                                return PopDialog(
                                                  hintTitle: 'Enter Serial No.',
                                                  title: 'Serial No.',
                                                  text: '',
                                                );
                                              });
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: fontSize * 5,
                                  width: fontSize * 6,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: boxColor,
                                      border: Border.all(
                                        color: boxColor,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Item \n Image',
                                        style: TextStyle(color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "2",
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    "PCS",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              )
                            ],
                          )),
                    );
                  },
                )),
            SizedBox(height: 5),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: w * .45,
                    height: 38,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: darkBlue),
                                borderRadius: BorderRadius.circular(5)),
                            elevation: 0,
                            backgroundColor: whiteColor),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Edit",
                          style: TextStyle(color: darkBlue),
                        )),
                  ),
                  SizedBox(
                    width: w * .45,
                    height: 38,
                    child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(backgroundColor: darkBlue),
                        onPressed: () {
                          //PopUp Dialog for Confirmation;
                          showDialog(
                              context: context,
                              builder: (context) {
                                return BoxSubmitDetailsPopup();
                              });
                        },
                        child: Text(
                          "Complete Box",
                          style: TextStyle(color: whiteColor),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//PopUp Dialog
class PopDialog extends StatelessWidget {
  final String title;
  final String hintTitle;
  final String text;

  const PopDialog(
      {Key? key,
      required this.title,
      required this.hintTitle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 180,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 8, top: 5),
                    child: Text(
                      "X",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 25, right: 25, bottom: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff391F84)),
                      ),
                      // Row(
                      //   children: [
                      //     Container(
                      //       alignment: Alignment.center,
                      //       width: 30,
                      //       height: 25,
                      //       decoration: BoxDecoration(
                      //           borderRadius: BorderRadius.circular(6),
                      //           border: Border.all(
                      //             color: textColor.withOpacity(.5),
                      //             width: 1,
                      //           )),
                      //       child: Text(
                      //         '0',
                      //         style: TextStyle(
                      //           color: primeColor,
                      //           fontSize: 20,
                      //         ),
                      //       ),
                      //     ),
                      //     Text(
                      //       ' /10',
                      //       style: TextStyle(fontSize: 20,color: darkBlue),
                      //     ),
                      //   ],
                      // ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                    colors: const [Colors.white, darkBlue],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Container(
                height: 35,
                margin: EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10),
                      hintText: hintTitle,
                      border:
                          UnderlineInputBorder(borderSide: BorderSide.none)),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 77,
                    height: 25,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: greyColor),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          maxLines: 1,
                          style: TextStyle(color: textColor, fontSize: 11),
                        )),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 77,
                    height: 25,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: primeColor),
                        onPressed: () {},
                        child: Text(
                          "Save",
                          maxLines: 1,
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//ScanPopUp Dialog
class ScanPopDialog extends StatefulWidget {
  final String title;
  final String hintTitle;
  final String text;

  const ScanPopDialog({
    Key? key,
    required this.title,
    required this.hintTitle,
    required this.text,
  }) : super(key: key);

  @override
  State<ScanPopDialog> createState() => _ScanPopDialogState();
}

class _ScanPopDialogState extends State<ScanPopDialog> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) return;
      final imageTemp = File(image.path);
      setState(() => this.image = imageTemp);
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(children: [
        SizedBox(
          width: 360,
          height: 200,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, left: 25, right: 25, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.title,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: darkBlue),
                    ),
                    Material(
                        elevation: 2,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        child: Container(
                            height: 49,
                            width: 49,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: IconButton(
                                onPressed: () {
                                  pickImage();
                                },
                                icon: const Icon(
                                  Icons.qr_code_scanner_outlined,
                                  size: 30,
                                ))))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 12, right: 12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: const LinearGradient(
                      colors: [Colors.white, darkBlue],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: Container(
                  height: 35,
                  margin: const EdgeInsets.only(bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(10),
                        hintText: widget.hintTitle,
                        border: const UnderlineInputBorder(
                            borderSide: BorderSide.none)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(right: 26.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: 77,
                      height: 25,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: greyColor),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                            maxLines: 1,
                            style: TextStyle(color: textColor, fontSize: 11),
                          )),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 77,
                      height: 25,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0, backgroundColor: primeColor),
                          onPressed: () {},
                          child: const Text(
                            "Save",
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}

//Popup Submit  Btn
class BoxSubmitDetailsPopup extends StatelessWidget {
  const BoxSubmitDetailsPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              width: 320,
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    "Submit Details",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: darkBlue),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Are you sure you want to submit \n these details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: textColor),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 77,
                        height: 25,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: greyColor),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "No",
                              style: TextStyle(color: textColor),
                            )),
                      ),
                      SizedBox(width: 15),
                      SizedBox(
                        width: 77,
                        height: 25,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: primeColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ManifestList()));
                            },
                            child: Text(
                              "Yes",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                top: -35,
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Card(
                    elevation: 2,
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.question_mark,
                      size: 40,
                      color: Color(0xffEC642A),
                    ),
                  ),
                ))
          ]),
    );
  }
}
