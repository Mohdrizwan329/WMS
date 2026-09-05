import 'package:flutter/material.dart';

import '../widgets/search_card.dart';

class CreateAssembly extends StatelessWidget {
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
            hintStyle: TextStyle(
              fontSize: fontSize / 1.2,
              height: 0.7,
            )),
      ),
    );
  }

  const CreateAssembly({Key? key}) : super(key: key);

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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('No. * ', fontSize: 13),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonText('No. of Qty * ', fontSize: 13)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('Asmbly-PP/21/100445',
                                  color: Colors.grey.shade700, fontSize: 10),
                              SizedBox(
                                height: fontSize,
                              ),
                              commonTextBox(text: '10'),
                            ],
                          ),
                          Column(
                            children: [
                              commonText('Item No. * ', fontSize: 13),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonTextBox(text: 'Select Item No.'),
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              commonText('Assembly Quantity : '),
                              commonText('0', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize,
                          ),
                          Row(
                            children: [
                              commonText('Remaining Quantity : '),
                              commonText('10', color: Colors.grey.shade700)
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              commonText('Qty to Assemble '),
                              commonText('10',
                                  color: const Color.fromRGBO(236, 100, 42, 1),
                                  fontSize: 14),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: fontSize / 10,
                      ),
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
                          commonText('Description : ',
                              color: Colors.grey.shade700),
                          SizedBox(
                            height: fontSize / 1.5,
                          ),
                          commonText(
                            'Qty per BOM : ',
                          ),
                          SizedBox(
                            height: fontSize * 1 / 1.5,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Consumed / Remaining Qty : ',
                              ),
                              commonText('7 / 3', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 2,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Qty to Consume : ',
                              ),
                              commonText('10', color: Colors.grey.shade700),
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
                      SizedBox(
                        height: fontSize / 2,
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
                          commonText('Description : ',
                              color: Colors.grey.shade700),
                          SizedBox(
                            height: fontSize / 1.5,
                          ),
                          commonText(
                            'Qty per BOM : ',
                          ),
                          SizedBox(
                            height: fontSize * 1 / 1.5,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Consumed / Remaining Qty : ',
                              ),
                              commonText('7 / 3', color: Colors.grey.shade700)
                            ],
                          ),
                          SizedBox(
                            height: fontSize * 1 / 2,
                          ),
                          Row(
                            children: [
                              commonText(
                                'Qty to Consume : ',
                              ),
                              commonText('10', color: Colors.grey.shade700),
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
                      SizedBox(
                        height: fontSize / 2,
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
