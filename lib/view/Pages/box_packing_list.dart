// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/box_packing_detail.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class BoxPackingList extends StatelessWidget {
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

  BoxPackingList({Key? key}) : super(key: key);

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
              heading: 'Box Packing',
              searchText: 'Scan',
            ),
            Card(
              child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 20, top: 10, bottom: 10),
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
                          commonText('Ref No.'),
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
                          commonText('Whse Doc No.'),
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
                height: h * 0.57,
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
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  const Text(
                                    "Box-PP/21-22/100658",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 9,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  const Text(
                                    "SO-PP/21-22/101036",
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
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  const Text(
                                    "Ship-PP/21-22/100773",
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
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
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
                                  const Padding(
                                    padding: EdgeInsets.only(left: 5),
                                    child: Text(
                                      "0/15",
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
                                            color: darkBlue,
                                            width: 1,
                                          )),
                                      child: const Text(
                                        "Shipment Posted",
                                        style: TextStyle(
                                            color: darkBlue,
                                            fontSize: 9,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const BoxPackingDetail()));
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
            // Container(
            //   height: 40,
            //   width: 300,
            //   decoration: const BoxDecoration(
            //       color: Color.fromARGB(193, 221, 221, 226)),
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
