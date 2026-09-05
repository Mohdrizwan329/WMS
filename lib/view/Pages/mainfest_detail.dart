import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/bin_movement_list.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class ManifestDetail extends StatelessWidget {
  final fontSize = 12.00;

  Widget commonText(
    String text, {
    double height = 1,
    Color color = darkBlue,
    double fontSize = 12.00,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
        color: color,
        height: height,
      ),
    );
  }

  // Widget commonTextBox({
  //   String text = '',
  //   String prefillText = '',
  //   Color color = const Color.fromRGBO(57, 31, 132, 1),
  //   double fontSize = 12.00,
  // }) {
  //   return Container(
  //     decoration: BoxDecoration(border: Border.all(color: greyColor),borderRadius: BorderRadius.circular(5)),
  //     height: fontSize * 2,
  //     width: fontSize * 8,
  //     child: TextField(
  //       controller: TextEditingController(text: prefillText),
  //       decoration: InputDecoration(
  //           border: const OutlineInputBorder(borderSide: BorderSide.none),
  //           hintText: text,
  //           hintStyle: TextStyle(fontSize: fontSize, height: 0.1)),
  //     ),
  //   );
  // }

  ManifestDetail({Key? key}) : super(key: key);

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
        body: Column(children: [
          const SearchCard(
            heading: 'Manifest',
            searchText: 'Search',
          ),
          Card(
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: fontSize * .5,
                            ),
                            commonText('DSP Code', fontSize: 10),
                            SizedBox(
                              height: fontSize * 3,
                            ),
                            commonText('Scan Box', fontSize: 10)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: fontSize * .5,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: greyColor),
                                  borderRadius: BorderRadius.circular(5)),
                              height: fontSize * 2,
                              width: fontSize * 10,
                              child: TextField(
                                //controller: TextEditingController(text: prefillText),
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    //hintText: text,
                                    hintStyle: TextStyle(
                                        fontSize: fontSize, height: 0.1)),
                              ),
                            ),
                            SizedBox(
                              height: fontSize * 2,
                            ),
                            InkWell(
                              child: Container(
                                height: fontSize * 2,
                                width: fontSize * 10,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: greyColor,
                                  ),
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Text(''),
                              ),
                              onTap: () {
                                // Show Dialog
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const ScanPopDialog(
                                        hintTitle: 'Enter Item No.',
                                        title: 'Scan Item',
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
                              height: fontSize * .5,
                            ),
                            commonText('Vehicle No.', fontSize: 10),
                            SizedBox(
                              height: fontSize * 3,
                            ),
                            commonText('No. of Box', fontSize: 10)
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: greyColor),
                                  borderRadius: BorderRadius.circular(5)),
                              height: fontSize * 2,
                              width: fontSize * 10,
                              child: TextField(
                                //controller: TextEditingController(text: prefillText),
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(
                                        borderSide: BorderSide.none),
                                    //hintText: text,
                                    hintStyle: TextStyle(
                                        fontSize: fontSize, height: 0.1)),
                              ),
                            ),
                            SizedBox(
                              height: fontSize * 2,
                            ),
                            commonText('10',
                                fontSize: 15,
                                color: const Color.fromRGBO(236, 100, 42, 1)),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
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
                                color: Colors.white, fontSize: 12)),
                      ),
                    ),
                  ],
                )),
          ),
          SizedBox(
              height: h * .5,
              width: w,
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "PBox100455",
                                  style: TextStyle(
                                      color: darkBlue,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: fontSize,
                                ),
                                //Text("PBox100455",style: TextStyle(color:darkBlue,fontSize: 13,fontWeight: FontWeight.w700 )),
                                RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                      children: [
                                        TextSpan(text: 'Quantity : '),
                                        TextSpan(text: "10")
                                      ]),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                      children: [
                                        TextSpan(text: 'AWB No. : '),
                                        TextSpan(text: "12345")
                                      ]),
                                ),
                                SizedBox(
                                  height: fontSize,
                                ),
                                RichText(
                                  text: const TextSpan(
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                      children: [
                                        TextSpan(text: 'Weight : '),
                                        TextSpan(text: "20kg")
                                      ]),
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "2",
                                  style: TextStyle(
                                      color: darkBlue,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "Box",
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
          //Buttons
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
                      style:
                          ElevatedButton.styleFrom(backgroundColor: greyColor),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Cancel",
                        style: TextStyle(color: textColor),
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
                              return const ManiFestSubmitDetailsPopup();
                            });
                      },
                      child: const Text(
                        "Submit",
                        style: TextStyle(color: whiteColor),
                      )),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

//Popup Btn
class ManiFestSubmitDetailsPopup extends StatelessWidget {
  const ManiFestSubmitDetailsPopup({super.key});

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
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Submit Details",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: darkBlue),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Are you sure you want to submit \n these details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: textColor),
                  ),
                  const SizedBox(height: 10),
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
                            child: const Text(
                              "No",
                              style: TextStyle(color: textColor),
                            )),
                      ),
                      const SizedBox(width: 15),
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
                                      builder: (context) =>
                                          const BinMovementList()));
                            },
                            child: const Text(
                              "Yes",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Positioned(
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
                              backgroundColor: greyColor),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(color: textColor, fontSize: 11),
                          )),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 77,
                      height: 25,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: primeColor),
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
