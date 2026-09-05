// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:stackerbee_app/view/Pages/mainfest_detail.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

import '../../utils/color.dart';

class ManifestList extends StatelessWidget {
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

  ManifestList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Pages_AppBar(),
        ),
        bottomNavigationBar: const BottomNavigation(),
        body: Column(
          children: [
            const SearchCard(
              heading: 'Manifest',
              searchText: 'Search',
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
                          commonText('DSP Code'),
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
                          commonText('No. of Box'),
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
                                  const Text(
                                    "Manifest-PP/22-23/100180",
                                    maxLines: 2,
                                    softWrap: true,
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  const Text(
                                    "Self",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 60),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "2022-11-21",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: fontSize,
                                    ),
                                    const Text(
                                      "Muskan",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "5",
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
                                      width: fontSize * 5,
                                      padding: const EdgeInsets.all(2),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(2),
                                          border: Border.all(
                                            color: greenColor,
                                            width: 1,
                                          )),
                                      child: const Text(
                                        "Posted",
                                        style: TextStyle(
                                            color: greenColor,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ManifestDetail()));
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
            // SizedBox(
            //   height: 40,
            //   width: 300,
            //   child: NumberPaginator(
            //     numberPages: numberOfPages,
            //     onPageChange: (index) {
            //       StepState() {
            //         currentPage = index;
            //       }
            //     },
            //     initialPage: currentPage,
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
            // )
          ],
        ),
      ),
    );
  }
}
