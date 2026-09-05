// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/sales_orderlist.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class PutAwayPurchaseReceipt extends StatefulWidget {
  const PutAwayPurchaseReceipt({super.key});

  @override
  State<PutAwayPurchaseReceipt> createState() => _PutAwayPurchaseReceiptState();
}

class _PutAwayPurchaseReceiptState extends State<PutAwayPurchaseReceipt> {
  //TextStyle Function
  final fontSize = 10.00;

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

  int numberOfPages = 10;
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: Pages_AppBar(),
          ),
          bottomNavigationBar: BottomNavigation(),
          body: Column(children: [
            const SearchCard(
              heading: 'Put-away',
              searchText: 'Scan',
              sizeFactor: 1.9,
            ),
            //Multi scan Text Field
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.95,
              height: 35,
              child: Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: 'Scan Bin',
                            contentPadding:
                                EdgeInsets.only(bottom: 14, top: 0, left: 5),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 127, 125, 125)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    ),
                    SizedBox(width: 5),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      height: 25,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xffD9D9D9)),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 12),
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none),
                            hintText: 'Scan Item',
                            contentPadding:
                                EdgeInsets.only(bottom: 14, top: 0, left: 5),
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 127, 125, 125)),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide.none)),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('Purchase Receipt Lines',
                              fontSize: 12, color: darkBlue),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            children: [
                              commonText('Doc No. : ', color: darkBlue),
                              Text(
                                "GRN-PP/22-23/100688",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            children: [
                              commonText('GRN No. : ', color: darkBlue),
                              Text(
                                "PGRN-PP/11/21/100428",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              commonText('No. of lines - ', color: darkBlue),
                              Text(
                                "2",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                              //commonText('2', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            children: [
                              commonText('PO No. : ', color: darkBlue),
                              Text(
                                "PO-PP/22-23/10635",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            children: [
                              commonText('Recd Qty/Qty : ', color: darkBlue),
                              Text(
                                "0/10",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
            ),
            SizedBox(
                width: w,
                height: MediaQuery.of(context).size.height * 0.55,
                child: ListView.builder(
                  itemCount: 8,
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
                                  commonText('I-PP100821',
                                      fontSize: 12, color: darkBlue),
                                  SizedBox(
                                    height: fontSize / 4,
                                  ),
                                  Text(
                                    "Bin",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 4),
                                  Text(
                                    "Item Name",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      commonText(
                                        'Lot No. : ',
                                        color: darkBlue,
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
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      commonText(
                                        'Serial No. : ',
                                        color: darkBlue,
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
                                          //Show Dialog
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
                                  SizedBox(height: 4),
                                  Row(
                                    children: [
                                      commonText(
                                        'Exp : ',
                                        color: darkBlue,
                                      ),
                                      InkWell(
                                        child: Text(
                                          "08-12-2022",
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
                                                return PopDateDialog(
                                                  hintDate: '08-12-2022',
                                                  title: 'Exp Date',
                                                );
                                              });
                                        },
                                      ),
                                      SizedBox(
                                        width: fontSize,
                                      ),
                                      commonText(
                                        'Mfg : ',
                                        color: darkBlue,
                                      ),
                                      InkWell(
                                        child: Text(
                                          "08-12-2022",
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
                                                return PopDateDialog(
                                                  hintDate: '08-12-2022',
                                                  title: 'Mfg Date',
                                                );
                                              });
                                        },
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height: fontSize * 6,
                                  width: fontSize * 7,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xff814D4D),
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
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width: 30,
                                        height: 25,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                              color: textColor.withOpacity(.5),
                                              width: 1,
                                            )),
                                        child: Text(
                                          '0',
                                          style: TextStyle(
                                            color: primeColor,
                                            fontSize: fontSize * 2,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        " / 10",
                                        style: TextStyle(
                                            color: darkBlue,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w800),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "PCS",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          )),
                    );
                  },
                )),
            //Page Number Generation
            SizedBox(
              height: 5,
            ),
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
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: greyColor),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: TextStyle(color: textColor),
                        )),
                  ),
                  SizedBox(
                    width: w * .45,
                    height: 38,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0, backgroundColor: darkBlue),
                        onPressed: () {
                          //PopUp Dialog for Confirmation;
                          showDialog(
                              context: context,
                              builder: (context) {
                                return PutAwaySubmitDetailsPopup();
                              });
                        },
                        child: Text(
                          "Submit",
                          style: TextStyle(color: whiteColor),
                        )),
                  )
                ],
              ),
            ),
          ])),
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
                            color: darkBlue),
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
                                  color: textColor.withOpacity(.5),
                                  width: 1,
                                )),
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: primeColor,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Text(
                            ' /10',
                            style: TextStyle(fontSize: 20, color: darkBlue),
                          ),
                        ],
                      ),
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
                          style: TextStyle(color: textColor, fontSize: 10),
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
                          style: TextStyle(color: Colors.white, fontSize: 10),
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

//PopUp of Date Mfg, Exp,
class PopDateDialog extends StatelessWidget {
  final String title;
  final String hintDate;

  const PopDateDialog({Key? key, required this.title, required this.hintDate})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(children: [
        SizedBox(
          width: 360,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: darkBlue),
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
                                color: textColor.withOpacity(.5),
                                width: 1,
                              )),
                          child: Text(
                            '0',
                            style: TextStyle(
                              color: primeColor,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Text(
                          ' /10',
                          style: TextStyle(fontSize: 20, color: darkBlue),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8),
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
                        suffixIcon: IconButton(
                          icon: Icon(Icons.calendar_month_outlined),
                          onPressed: () async {
                            // DateTime? datePicker = await showDatePicker(
                            //     context: context,
                            //     initialDate: DateTime.now(),
                            //     firstDate: DateTime(2021),
                            //     lastDate: DateTime(2023));

                            // if (datePicker != null) {
                            //   print(
                            //       'Date Selected: ${datePicker.day}-${datePicker.month}-${datePicker.year}');
                            // }
                          },
                        ),
                        contentPadding: EdgeInsets.only(left: 10, top: 2),
                        hintText: hintDate,
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
                            style: TextStyle(color: textColor, fontSize: 10),
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
                            style: TextStyle(color: Colors.white, fontSize: 10),
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

//Submit Details PopUp Btn.
class PutAwaySubmitDetailsPopup extends StatelessWidget {
  const PutAwaySubmitDetailsPopup({super.key});

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
                                      builder: (context) => SalesOrderList()));
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
