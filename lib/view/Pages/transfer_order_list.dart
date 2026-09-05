import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:stackerbee_app/view/Pages/create_transfer.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class TransferOrderList extends StatelessWidget {
  final fontSize = 10.00;

  Widget commonText(
    String text, {
    Color color = const Color.fromRGBO(0, 0, 0, 1),
    double fontSize = 12.00,
    FontWeight fontWeight = FontWeight.bold,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }

  const TransferOrderList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int numberofPages;
    int currentPage;
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 142,
                  height: 32,
                  child: Image(image: AssetImage('assets/images/logo1_sb.png')),
                ),
                Container(
                  width: 66,
                  height: 30,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(4)),
                  child: TextButton(
                    child: const Text(
                      "DKB GGN",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            backgroundColor: const Color(0xff391F84),
            automaticallyImplyLeading: false,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu, color: Color(0xff391F84)),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 40,
              height: 40,
              child: CircleAvatar(
                backgroundColor: const Color.fromRGBO(236, 100, 42, 1),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.add, color: Colors.white),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 23,
              height: 25,
              child: SvgPicture.asset('assets/images/backarrow.svg'),
            ),
            label: '',
          ),
        ]),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * .8,
            child: Column(
              children: [
                const SearchCard(
                  heading: 'Transfer Order',
                  searchText: 'Scan Bin',
                  sizeFactor: 2.4,
                ),
                Card(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('Doc No.'),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Transfer Form'),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Instant Location'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('Doc Date'),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Transfer To'),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Created By'),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('Qty to Ship'),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Shipped/Remain Qty'),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Status'),
                            ],
                          )
                        ],
                      )),
                ),
                Card(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('TRANS-PP-22-23-017v',
                                  fontWeight: FontWeight.w500),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('GGN', fontWeight: FontWeight.w500),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('PAT', fontWeight: FontWeight.w500),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('2022-11-21',
                                  fontWeight: FontWeight.w500),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Noida', fontWeight: FontWeight.w500),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Stackerbee',
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(57, 31, 132, 1)),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('10', fontWeight: FontWeight.w500),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('7/3', fontWeight: FontWeight.w500),
                              SizedBox(
                                height: fontSize,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const CreateTransfer()));
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  height: fontSize * 2,
                                  width: 65,
                                  padding: const EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(2),
                                      border: Border.all(
                                        color: const Color.fromRGBO(
                                            255, 17, 203, 1),
                                        width: 1,
                                      )),
                                  child: commonText(
                                    'Created',
                                    color:
                                        const Color.fromRGBO(255, 17, 203, 1),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .45,
                ),
                SizedBox(
                  height: 40,
                  width: 300,
                  child: NumberPaginator(
                    numberPages: numberofPages = 10,
                    onPageChange: (index) {},
                    initialPage: currentPage = 0,
                    config: NumberPaginatorUIConfig(
                      buttonSelectedForegroundColor: Colors.white,
                      buttonSelectedBackgroundColor: const Color(0xff391F84),
                      buttonUnselectedForegroundColor: const Color(0xff391F84),
                      mode: ContentDisplayMode.numbers,
                      mainAxisAlignment: MainAxisAlignment.center,
                      contentPadding: const EdgeInsets.only(left: 2, right: 2),
                      buttonShape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
