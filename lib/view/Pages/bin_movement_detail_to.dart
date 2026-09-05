import 'package:flutter/material.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class BinMovementDetailTo extends StatelessWidget {
  final fontSize = 12.00;

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

  Widget commonTextBox({
    String text = '',
    String prefillText = '',
    Color color = const Color.fromRGBO(57, 31, 132, 1),
    double fontSize = 12.00,
  }) {
    return SizedBox(
      height: fontSize * 2,
      width: fontSize * 8,
      child: TextField(
        controller: TextEditingController(text: prefillText),
        decoration: InputDecoration(
            // border: const OutlineInputBorder(),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade700)),
            hintText: text,
            hintStyle: TextStyle(fontSize: fontSize, height: 0.1)),
      ),
    );
  }

  const BinMovementDetailTo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SearchCard(
              heading: 'Bin Movement',
              searchText: 'Search',
            ),
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      commonText('Move Order Lines', fontSize: 16),
                      SizedBox(
                        height: fontSize,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              commonText('Doc No.', fontSize: 14),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('Remarks', fontSize: 14)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('BB-PP/22-23/100180',
                                  color: Colors.grey.shade700),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonTextBox(),
                            ],
                          ),
                          Column(
                            children: [
                              commonText('No. of lines -', fontSize: 14),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('2', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize,
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  commonText('I-PP100821', fontSize: 14),
                                  SizedBox(
                                    height: fontSize / 4,
                                  ),
                                  commonText('Item Name',
                                      color: Colors.grey.shade700),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Row(
                                    children: [
                                      commonText(
                                        'Lot No. : ',
                                      ),
                                      commonText('stackerbee',
                                          color: Colors.grey.shade700),
                                      SizedBox(
                                        width: fontSize,
                                      ),
                                      commonText(
                                        'Serial No. : ',
                                      ),
                                      commonText('001',
                                          color: Colors.grey.shade700),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: fontSize * 2,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                      height: fontSize * 5,
                                      width: fontSize * 5,
                                      child: const Placeholder()),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 2,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Form Bin : ',
                              ),
                              commonText('testbin', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 2,
                          ),
                          Row(
                            children: [
                              commonText(
                                'To Bin : ',
                              ),
                              commonText('testbin',
                                  color: Colors.grey.shade700),
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 2,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: fontSize * 1.7,
                                height: fontSize * 1.7,
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
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              commonText(' /10', fontSize: fontSize * 3 / 2),
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 4,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: fontSize * 1.7,
                                height: fontSize * 1.7,
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
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              commonText(' /0', fontSize: fontSize * 3 / 2),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: fontSize,
                              ),
                              commonText('PCS',
                                  color: Colors.grey.shade700,
                                  fontSize: fontSize),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
            Card(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  commonText('I-PP100821', fontSize: 14),
                                  SizedBox(
                                    height: fontSize / 4,
                                  ),
                                  commonText('Item Name',
                                      color: Colors.grey.shade700),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  Row(
                                    children: [
                                      commonText(
                                        'Lot No. : ',
                                      ),
                                      commonText('stackerbee',
                                          color: Colors.grey.shade700),
                                      SizedBox(
                                        width: fontSize,
                                      ),
                                      commonText(
                                        'Serial No. : ',
                                      ),
                                      commonText('001',
                                          color: Colors.grey.shade700),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: fontSize * 2,
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                      height: fontSize * 5,
                                      width: fontSize * 5,
                                      child: const Placeholder()),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 2,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Form Bin : ',
                              ),
                              commonText('testbin', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 2,
                          ),
                          Row(
                            children: [
                              commonText(
                                'To Bin : ',
                              ),
                              commonText('testbin',
                                  color: Colors.grey.shade700),
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 2,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: fontSize * 1.7,
                                height: fontSize * 1.7,
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
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              commonText(' /5', fontSize: fontSize * 3 / 2),
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 4,
                          ),
                          Row(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                width: fontSize * 1.7,
                                height: fontSize * 1.7,
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
                                    fontSize: fontSize,
                                  ),
                                ),
                              ),
                              commonText(' /0', fontSize: fontSize * 3 / 2),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: fontSize,
                              ),
                              commonText('PCS',
                                  color: Colors.grey.shade700,
                                  fontSize: fontSize),
                            ],
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
