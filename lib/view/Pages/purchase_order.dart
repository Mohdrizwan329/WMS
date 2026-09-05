// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pagination_flutter/pagination.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/grnpage.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class PurchaseOrderPage extends StatefulWidget {
  const PurchaseOrderPage({super.key});

  @override
  State<PurchaseOrderPage> createState() => _PurchaseOrderPageState();
}

class _PurchaseOrderPageState extends State<PurchaseOrderPage> {
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

  int numberOfPage = 10;
  int currentNumber = 1;

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: w,
                height: h * .74,
                child: Column(
                  children: [
                    const SearchCard(
                      heading: 'Purchase Order',
                      searchText: 'Search',
                      sizeFactor: 2.4,
                    ),
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
                                  commonText('PO No.'),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  commonText('Order Date'),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    commonText('Vendor No.'),
                                    SizedBox(
                                      height: fontSize,
                                    ),
                                    commonText('Vendor No.'),
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
                                  commonText('Status'),
                                ],
                              )
                            ],
                          )),
                    ),
                    //List Details of Purchase
                    SizedBox(
                      height: h * .6,
                      width: w,
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Card(
                            child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 10.0, bottom: 10, left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                          '2022-11-21',
                                          style: TextStyle(
                                              color: blackColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'A & M Printer',
                                          style: TextStyle(
                                              color: blackColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(
                                          height: fontSize,
                                        ),
                                        Text(
                                          'VN00097',
                                          style: TextStyle(
                                              color: blackColor,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                        InkWell(
                                          child: Container(
                                              alignment: Alignment.center,
                                              height: fontSize * 2,
                                              padding: const EdgeInsets.only(
                                                  left: 8, right: 8),
                                              decoration: BoxDecoration(
                                                  color: greenColor,
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
                                                    color: whiteColor),
                                              )),
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        GRNPage()));
                                          },
                                        )
                                      ],
                                    )
                                  ],
                                )),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              //Page Number Generation
              Pagination(
                numOfPages: numberOfPage,
                selectedPage: currentNumber,
                pagesVisible: 3,
                onPageChanged: (page) {
                  setState(() {
                    currentNumber = page;
                  });
                },
                nextIcon: const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.blue,
                  size: 14,
                ),
                previousIcon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.blue,
                  size: 14,
                ),
                activeTextStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                activeBtnStyle: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(Size(40, 35)),
                  padding: WidgetStatePropertyAll(EdgeInsets.all(2)),
                  backgroundColor: WidgetStateProperty.all(darkBlue),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                ),
                inactiveBtnStyle: ButtonStyle(
                  shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
                ),
                inactiveTextStyle: const TextStyle(
                  color: darkBlue,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
              // Container(
              //   height: 40,
              //   width: 300,
              //   // decoration:
              //   //     BoxDecoration(color: Color.fromARGB(193, 221, 221, 226)),
              //   child: NumberPaginator(
              //     prevButtonContent:
              //         Container(height: 40, width: 40, color: Colors.amber),
              //     numberPages: numberOfPage,
              //     onPageChange: (index) {
              //       StepState() {
              //         currentNumber = index;
              //       }
              //     },
              //     initialPage: currentNumber,
              //     config: NumberPaginatorUIConfig(
              //       buttonSelectedForegroundColor: Colors.white,
              //       buttonSelectedBackgroundColor: Color(0xff391F84),
              //       buttonUnselectedForegroundColor: Color(0xff391F84),
              //       mode: ContentDisplayMode.numbers,
              //       mainAxisAlignment: MainAxisAlignment.center,
              //       contentPadding: EdgeInsets.only(left: 2, right: 2),
              //       buttonShape: ContinuousRectangleBorder(
              //           borderRadius: BorderRadius.circular(10)),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
