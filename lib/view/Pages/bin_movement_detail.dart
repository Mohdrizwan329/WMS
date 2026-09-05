import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/assembly_order_list.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class BinMovementDetail extends StatelessWidget {
  final fontSize = 12.00;

  Widget commonText(
    String text, {
    Color color = darkBlue,
    double fontSize = 12.00,
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

  const BinMovementDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    var currentPage = 0;
    var numberofPages = 10;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Pages_AppBar(),
        ),
        bottomNavigationBar: const BottomNavigation(),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
              children: [
                const SearchCard(
                  heading: 'Bin Movement',
                  searchText: 'Search',
                ),
                Card(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('Move Order Lines', fontSize: 12),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  commonText('Doc No.', fontSize: 11),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  commonText('Remarks', fontSize: 11)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "BB-PP/22-23/100180",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Container(
                                      height: fontSize * 2,
                                      width: fontSize * 10,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: greyColor),
                                          borderRadius:
                                              BorderRadius.circular(2)),
                                      child: const TextField(
                                        //controller: TextEditingController(text: prefillText),
                                        decoration: InputDecoration(
                                          // border: const OutlineInputBorder(),
                                          border: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                        ),
                                      )),
                                ],
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      commonText('No. of lines -',
                                          fontSize: 11),
                                      const Text(
                                        " 2",
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 11,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: fontSize,
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  width: w,
                  height: h * .55,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "I-PP100821",
                                              style: TextStyle(
                                                  color: darkBlue,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                            SizedBox(
                                              height: fontSize / 4,
                                            ),
                                            const Text(
                                              "Item Next",
                                              style: TextStyle(
                                                  color: textColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: fontSize,
                                            ),
                                            Row(
                                              children: [
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Lot No. : ",
                                                      style: TextStyle(
                                                          color: darkBlue,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    InkWell(
                                                      child: const Text(
                                                        "stackerbee",
                                                        style: TextStyle(
                                                            color: textColor,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      onTap: () {
                                                        //Show Dialog
                                                        showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return const PopDialog(
                                                                hintTitle:
                                                                    'Enter Lot No.',
                                                                title:
                                                                    'Lot No.',
                                                                text: '',
                                                              );
                                                            });
                                                      },
                                                    )
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: fontSize,
                                                ),
                                                Row(
                                                  children: [
                                                    const Text(
                                                      "Serial No. : ",
                                                      style: TextStyle(
                                                          color: darkBlue,
                                                          fontSize: 10,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                    ),
                                                    InkWell(
                                                      child: const Text(
                                                        "001",
                                                        style: TextStyle(
                                                            color: textColor,
                                                            fontSize: 10,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                      onTap: () {
                                                        //Show Dialog
                                                        showDialog(
                                                            context: context,
                                                            builder: (context) {
                                                              return const PopDialog(
                                                                hintTitle:
                                                                    'Enter Serial No.',
                                                                title:
                                                                    'Serial No.',
                                                                text: '',
                                                              );
                                                            });
                                                      },
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: fontSize * 2,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                                height: fontSize * 5,
                                                width: fontSize * 5,
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color:
                                                        const Color(0xff814D4D),
                                                    border: Border.all(
                                                      color: const Color(
                                                          0xff814D4D),
                                                    ),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      'Item \n Image',
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                  ),
                                                )),
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: fontSize * 1 / 2,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "From Bin : ",
                                          style: TextStyle(
                                              color: darkBlue,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        InkWell(
                                          child: const Text(
                                            "test bin",
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
                                                  return const PopDialog(
                                                    hintTitle: 'Enter Bin Code',
                                                    title: 'From Bin',
                                                    text: '',
                                                  );
                                                });
                                          },
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: fontSize * 1 / 2,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          "To Bin : ",
                                          style: TextStyle(
                                              color: darkBlue,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        InkWell(
                                          child: const Text(
                                            "testbin",
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
                                                  return const PopDialog(
                                                    hintTitle: 'Enter Bin Code',
                                                    title: 'To Bin',
                                                    text: '',
                                                  );
                                                });
                                          },
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: fontSize * 1,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    commonText('10', fontSize: 15),
                                    const Text(
                                      '0',
                                      style: TextStyle(
                                        color: primeColor,
                                        fontSize: 15,
                                      ),
                                    ),
                                    commonText('PCS',
                                        color: textColor, fontSize: 10),
                                  ],
                                ),
                              ],
                            )),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                // SizedBox(
                //   height: 40,
                //   width: 300,
                //   child: NumberPaginator(
                //     numberPages: numberofPages = 10,
                //     onPageChange: (index) {},
                //     initialPage: currentPage = 0,
                //     config: NumberPaginatorUIConfig(
                //       buttonSelectedForegroundColor: Colors.white,
                //       buttonSelectedBackgroundColor: const Color(0xff391F84),
                //       buttonUnselectedForegroundColor: const Color(0xff391F84),
                //       mode: ContentDisplayMode.numbers,
                //       mainAxisAlignment: MainAxisAlignment.center,
                //       contentPadding: const EdgeInsets.only(left: 2, right: 2),
                //       buttonShape: ContinuousRectangleBorder(
                //           borderRadius: BorderRadius.circular(10)),
                //     ),
                //   ),
                // ),
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: w * .45,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffDBDBDB)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Color(0xff636363)),
                            )),
                      ),
                      SizedBox(
                        width: w * .45,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff391F84)),
                            onPressed: () {
                              //PopUp Dialog for Confirmation;
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const BoxSubmitDetailsPopup();
                                  });
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 234, 232, 232)),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
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
                  child: const Padding(
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
                        style: const TextStyle(
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
                      hintText: hintTitle,
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
                                          const AssemblyOrderList()));
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
