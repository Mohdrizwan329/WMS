// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/pick_list.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class SalesOrderList extends StatelessWidget {
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

  SalesOrderList({Key? key}) : super(key: key);

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
              heading: 'Sales Order',
              searchText: 'search',
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
                          commonText('Doc Date'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('Customer No.'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Bill To Name'),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            commonText('No. of Lines'),
                            SizedBox(
                              height: fontSize,
                            ),
                            commonText('Status'),
                          ],
                        ),
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
                                    "SO-PP/21-22/101037",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "2022-11-21",
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
                                    "EDAC-C00454",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Text(
                                    "Bright Angles Education Centre",
                                    maxLines: 2,
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
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "5",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  InkWell(
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: fontSize * 2,
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                            color: primeColor,
                                            width: 1,
                                          )),
                                      child: Text(
                                        "Completely Picked",
                                        style: TextStyle(
                                            color: primeColor,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  PickList()));
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
