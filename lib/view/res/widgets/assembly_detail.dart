import 'package:flutter/material.dart';

import '../widgets/search_card.dart';

class AssemblyDetail extends StatelessWidget {
  final fontSize = 10.00;

  Widget commonText(
    String text, {
    Color color = const Color.fromRGBO(57, 31, 132, 1),
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

  const AssemblyDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SearchCard(
              heading: 'Assembly Order',
              searchText: 'Search',
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
                          commonText('Assembly Order List', fontSize: 14),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            children: [
                              commonText('Doc No. '),
                              commonText('Assembly-PP/21-23/100441',
                                  color: Colors.grey.shade700)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('Qty to Assemble'),
                          SizedBox(
                            height: fontSize,
                          ),
                          commonText('Assembled Qty/Qty'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          commonText('10',
                              color: const Color.fromRGBO(236, 100, 42, 1),
                              fontSize: 14),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            children: [
                              commonText('5',
                                  color: const Color.fromRGBO(236, 100, 42, 1)),
                              commonText(' /10')
                            ],
                          ),
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
                          commonText('I-PP100821', fontSize: 12),
                          SizedBox(
                            height: fontSize / 4,
                          ),
                          commonText('Item Name', color: Colors.grey.shade700),
                          SizedBox(
                            height: fontSize / 4,
                          ),
                          commonText(
                            'Description :',
                          ),
                          SizedBox(
                            height: fontSize * 1 / 1.5,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Qty to Assemble : ',
                              ),
                              commonText('10', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 2,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Remaining Qty : ',
                              ),
                              commonText('5', color: Colors.grey.shade700),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: fontSize * 5,
                        width: fontSize * 5,
                      ),
                      SizedBox(
                          height: fontSize * 5,
                          width: fontSize * 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff814D4D),
                              border: Border.all(
                                color: const Color(0xff814D4D),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Item \n Image',
                                style: TextStyle(color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: fontSize / 2,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: fontSize * 3,
                                height: fontSize * 3,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                      color:
                                          const Color.fromRGBO(236, 100, 42, 1),
                                      width: 1,
                                    )),
                                child: Text(
                                  '0',
                                  style: TextStyle(
                                    color:
                                        const Color.fromRGBO(236, 100, 42, 1),
                                    fontSize: fontSize * 2,
                                  ),
                                ),
                              ),
                              commonText(' /5', fontSize: fontSize * 2),
                            ],
                          ),
                          commonText('PCS',
                              color: Colors.grey.shade700,
                              fontSize: fontSize * 3 / 2),
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
