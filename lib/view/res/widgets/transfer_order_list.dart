import 'package:flutter/material.dart';

import '../widgets/search_card.dart';

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
    return SafeArea(
      child: Scaffold(
        body: Column(
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
                          commonText('2022-11-21', fontWeight: FontWeight.w500),
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
                          Container(
                            alignment: Alignment.center,
                            height: fontSize * 2,
                            padding: const EdgeInsets.all(2),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                border: Border.all(
                                  color: const Color.fromRGBO(255, 17, 203, 1),
                                  width: 1,
                                )),
                            child: commonText(
                              'Created',
                              color: const Color.fromRGBO(255, 17, 203, 1),
                            ),
                          )
                        ],
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
