// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/putAwayPurchaseReceipt%20copy.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class PutAwayPage extends StatefulWidget {
  const PutAwayPage({super.key});

  @override
  State<PutAwayPage> createState() => _PutAwayPageState();
}

class _PutAwayPageState extends State<PutAwayPage> {
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
        body: Column(
          children: [
            const SearchCard(
              heading: 'Put-away',
              searchText: 'Scan',
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
                          commonText('Doc No.'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('GRN No.'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('PO No.'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('Doc Date'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Created By'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Assigned to'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('No. of Lines'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Recd Qty/Qty'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Status'),
                        ],
                      )
                    ],
                  )),
            ),
            //1st list
            SizedBox(
                width: w,
                height: MediaQuery.of(context).size.height * 0.6,
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
                                  Text(
                                    "Put-PP/22-23/100531",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  //commonText('Put-PP/22-23/100531'),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "PGRN-PP/11/21/100428",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  //commonText('PGRN-PP/11/21/100428'),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "PO-PP/22-23/10635",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  //commonText('PO-PP/22-23/10635'),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 40),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "2022-11-21",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    //commonText('2022-11-21'),
                                    SizedBox(
                                      height: fontSize,
                                    ),
                                    Text(
                                      "Muskan",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    //commonText('Muskan'),
                                    SizedBox(
                                      height: fontSize,
                                    ),
                                    Text(
                                      "Stackerbee",
                                      style: TextStyle(
                                          color: darkBlue,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    //commonText('Stackerbee',color: Color(0xff391F84)),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  //commonText('5'),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "0/15",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),

                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  InkWell(
                                    child: Container(
                                        alignment: Alignment.center,
                                        height: fontSize * 2,
                                        padding: const EdgeInsets.only(
                                            left: 8, right: 8),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(4),
                                            border: Border.all(
                                              color: greenColor,
                                              width: 1,
                                            )),
                                        child: Text(
                                          'Released',
                                          style: TextStyle(
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400,
                                              color: greenColor),
                                        )),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PutAwayPurchaseReceipt()));
                                    },
                                  )
                                ],
                              )
                            ],
                          )),
                    );
                  },
                )),
            //Page Number Generation
          ],
        ),
      ),
    );
  }
}
