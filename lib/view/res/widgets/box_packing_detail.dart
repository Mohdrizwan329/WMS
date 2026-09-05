// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:stackerbee_app/view/Pages/manifest_list.dart';
import '../widgets/search_card.dart';

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
    Color color = const Color.fromRGBO(57, 31, 132, 1),
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

  Widget commonTextBox({
    String text = '',
    String prefillText = '',
    Color color = const Color.fromRGBO(57, 31, 132, 1),
    double fontSize = 12.00,
  }) {
    return SizedBox(
      height: fontSize * 2,
      width: fontSize * 8,
      child: TextField(
        controller: TextEditingController(text: prefillText),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(5),
            border: const OutlineInputBorder(),
            hintText: text,
            hintStyle: TextStyle(fontSize: fontSize, height: 0.1)),
      ),
    );
  }

  int numberofPages = 10;

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * .4;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 142,
                  height: 32,
                  child: Image(image: AssetImage('assets/images/logo1_sb.png')),
                ),
                Container(
                  width: 66,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(4)),
                  child: TextButton(
                    child: Text(
                      "DKB GGN",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            backgroundColor: Color(0xff391F84),
            automaticallyImplyLeading: false,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, color: Color(0xff391F84)),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                backgroundColor: Color.fromRGBO(236, 100, 42, 1),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 23,
              height: 25,
              child: SvgPicture.asset('assets/images/backarrow.svg'),
            ),
            label: '',
          ),
        ]),
        body: Stack(children: [
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height * .8,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Flexible(
                    flex: 5,
                    child: const SearchCard(
                      heading: 'Box Packing',
                      searchText: 'Search',
                    ),
                  ),
                  Card(
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    commonText('Type *', fontSize: 14),
                                    SizedBox(
                                      height: fontSize * 2,
                                    ),
                                    commonText('Scan Item', fontSize: 14),
                                    SizedBox(
                                      height: fontSize * 2,
                                    ),
                                    commonText('Box Weight', fontSize: 14)
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    commonTextBox(text: 'Sales Order'),
                                    SizedBox(
                                      height: fontSize * 1.5,
                                    ),
                                    InkWell(
                                      child: Container(
                                        height: fontSize * 2,
                                        width: fontSize * 8,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Color.fromARGB(
                                                204, 112, 109, 122),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4),
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
                                            color: Color.fromARGB(
                                                204, 112, 109, 122),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(4),
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
                                    commonText('Doc No. *', fontSize: 14),
                                    SizedBox(
                                      height: fontSize * 2,
                                    ),
                                    commonText('Qty', fontSize: 14)
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    commonTextBox(text: '445'),
                                    SizedBox(
                                      height: fontSize * 1.5,
                                    ),
                                    SizedBox(
                                        width: 40,
                                        child:
                                            commonTextBox(prefillText: '10')),
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
                                        color: Colors.white, fontSize: 14)),
                              ),
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .99,
                    height: 330,
                    child: Column(
                      children: [
                        Card(
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      commonText('I-PP100821', fontSize: 12),
                                      SizedBox(height: fontSize / 2),
                                      commonText('Item Name',
                                          color: Colors.grey.shade700),
                                      SizedBox(height: fontSize / 2),
                                      Row(
                                        children: [
                                          commonText(
                                            'Lot No. :',
                                          ),
                                          InkWell(
                                            child: commonText('stackerbee',
                                                color: Colors.grey.shade700),
                                            onTap: () {
                                              //Show Dialog
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return PopDialog(
                                                      hintTitle:
                                                          'Enter Lot No.',
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
                                            'Serial No. :',
                                          ),
                                          InkWell(
                                            child: commonText('002',
                                                color: Colors.grey.shade700),
                                            onTap: () {
                                              // //Show Dialog
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return PopDialog(
                                                      hintTitle:
                                                          'Enter Serial No.',
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
                                          color: Color(0xff814D4D),
                                          border: Border.all(
                                            color: Color(0xff814D4D),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Item \n Image',
                                            style:
                                                TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      commonText('2', fontSize: fontSize * 2),
                                      commonText('PCS',
                                          color: Colors.grey.shade700,
                                          fontSize: fontSize * 3 / 2),
                                    ],
                                  )
                                ],
                              )),
                        ),
                        Card(
                          child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      commonText('I-PP100821', fontSize: 12),
                                      SizedBox(
                                        height: fontSize / 2,
                                      ),
                                      commonText('Item Name',
                                          color: Colors.grey.shade700),
                                      SizedBox(height: fontSize / 2),
                                      Row(
                                        children: [
                                          commonText(
                                            'Lot No. :',
                                          ),
                                          InkWell(
                                            child: commonText('stackerbee',
                                                color: Colors.grey.shade700),
                                            onTap: () {
                                              //Show Dialog
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return PopDialog(
                                                      hintTitle:
                                                          'Enter Lot No.',
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
                                            'Serial No. :',
                                          ),
                                          InkWell(
                                            child: commonText('002',
                                                color: Colors.grey.shade700),
                                            onTap: () {
                                              //Show Dialog
                                              showDialog(
                                                  context: context,
                                                  builder: (context) {
                                                    return PopDialog(
                                                      hintTitle:
                                                          'Enter Serial No.',
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
                                          color: Color(0xff814D4D),
                                          border: Border.all(
                                            color: Color(0xff814D4D),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Item \n Image',
                                            style:
                                                TextStyle(color: Colors.white),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      )),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      commonText('2', fontSize: fontSize * 2),
                                      commonText('PCS',
                                          color: Colors.grey.shade700,
                                          fontSize: fontSize * 3 / 2),
                                    ],
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ),
                  //Page Number Generation
                  SizedBox(
                    height: 40,
                    width: 300,
                    child: NumberPaginator(
                      numberPages: numberofPages,
                      onPageChange: (index) {},
                      initialPage: currentPage,
                      config: NumberPaginatorUIConfig(
                        buttonSelectedForegroundColor: Colors.white,
                        buttonSelectedBackgroundColor: Color(0xff391F84),
                        buttonUnselectedForegroundColor: Color(0xff391F84),
                        mode: ContentDisplayMode.numbers,
                        mainAxisAlignment: MainAxisAlignment.center,
                        contentPadding: EdgeInsets.only(left: 2, right: 2),
                        buttonShape: ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: width,
                    height: 38,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffDBDBDB)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Color(0xff636363)),
                        )),
                  ),
                  SizedBox(
                    width: width,
                    height: 38,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff391F84)),
                        onPressed: () {
                          //PopUp Dialog for Confirmation;
                          showDialog(
                              context: context,
                              builder: (context) {
                                return BoxSubmitDetailsPopup();
                              });
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(
                              color: Color.fromARGB(255, 234, 232, 232)),
                        )),
                  )
                ],
              ),
            ),
          ),
        ]),
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
            Padding(
              padding: const EdgeInsets.only(
                  top: 34, left: 25, right: 25, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff391F84)),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: const Color.fromRGBO(236, 100, 42, 1),
                              width: 1,
                            )),
                        child: Text(
                          '0',
                          style: TextStyle(
                            color: const Color.fromRGBO(236, 100, 42, 1),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Text(
                        ' /10',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                    colors: const [Colors.white, Color(0xff391F84)],
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
                            backgroundColor: Color(0xffD9D9D9)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: Color(0xff636363)),
                        )),
                  ),
                  SizedBox(width: 10),
                  SizedBox(
                    width: 77,
                    height: 25,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffEC642A)),
                        onPressed: () {},
                        child: Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
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
                          color: Color(0xff391F84)),
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
                      colors: [Colors.white, Color(0xff391F84)],
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
                              backgroundColor: const Color(0xffD9D9D9)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            "Cancel",
                            style: TextStyle(color: Color(0xff636363)),
                          )),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: 77,
                      height: 25,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffEC642A)),
                          onPressed: () {},
                          child: const Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
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
              height: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Submit Details",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff391F84)),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Are you sure you want to submit \n these details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff585858)),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 77,
                        height: 25,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffD9D9D9)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "No",
                              style: TextStyle(color: Color(0xff636363)),
                            )),
                      ),
                      SizedBox(width: 15),
                      SizedBox(
                        width: 77,
                        height: 25,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffEC642A)),
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
