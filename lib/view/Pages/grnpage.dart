// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/grnPurchaseReceipt.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class GRNPage extends StatefulWidget {
  const GRNPage({super.key});

  @override
  State<GRNPage> createState() => _GRNPageState();
}

class _GRNPageState extends State<GRNPage> {
  final fontSize = 10.00;
  Widget commonText(
    String text, {
    Color color = const Color.fromRGBO(0, 0, 0, 1),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SearchCard(heading: 'GRN', searchText: 'Scan'),
            Card(
              child: Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, bottom: 10, left: 10, right: 15),
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
                          commonText('Doc Date'),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonText('PO No.'),
                            SizedBox(
                              height: fontSize,
                            ),
                            commonText('Vendor'),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('No. of Lines'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Recd Qty/Qty'),
                        ],
                      )
                    ],
                  )),
            ),
            SizedBox(
              height: h * .66,
              width: w,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GRNPurchaseReceipt(),
                          ));
                    },
                    child: Card(
                      child: Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, bottom: 10, left: 10, right: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'GRN-PP/22-23/100688',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    '2022-11-21',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'PO-PP/22-23/10635',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    'A & M Printer',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '5',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    '0/15',
                                    style: TextStyle(
                                        color: blackColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              )
                            ],
                          )),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
