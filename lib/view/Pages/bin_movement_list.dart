import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/bin_movement_detail.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

import '../res/widgets/bottomNavigationBar.dart';

class BinMovementList extends StatelessWidget {
  final fontSize = 10.00;

  Widget commonText(
    String text, {
    Color color = blackColor,
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

  const BinMovementList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    int numberofPages;
    int currentPage;
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
            const SearchCard(
              heading: 'Bin Movement',
              searchText: 'Scan Bin',
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
                          commonText('User'),
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
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('No. of Lines'),
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
                height: h * .6,
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
                                    "BB-PP/22-23/100180",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  const Text(
                                    "Muskan",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "2022-11-21",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: fontSize,
                                    ),
                                    const Text(
                                      "stackerbee",
                                      style: TextStyle(
                                          color: darkBlue,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "2",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    height: fontSize * 2,
                                    width: 70,
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                          color: greenColor,
                                          width: 1,
                                        )),
                                    child: InkWell(
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const BinMovementDetail()));
                                        },
                                        child: commonText('Posted',
                                            color: greenColor, fontSize: 10)),
                                  )
                                ],
                              )
                            ],
                          )),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
