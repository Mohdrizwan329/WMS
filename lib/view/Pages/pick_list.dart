// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/pickup_details.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class PickList extends StatelessWidget {
  final fontSize = 10.00;

  Widget commonText(
    String text, {
    Color color = blackColor,
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

  PickList({Key? key}) : super(key: key);

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
              heading: 'Pick',
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
                          commonText('Shipment No.'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Order No.'),
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
            SizedBox(
                width: w,
                height: h * 0.6,
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
                                  Text(
                                    "Pick-PP/21-22/101132",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "Ship-PP/21-22/100762",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "SO-PP/21-22/101016",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "2022-11-21",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "Muskan",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "Stackerbee",
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "5",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "0/15",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
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
                                                  PickDetail()));
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
