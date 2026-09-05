import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:number_paginator/number_paginator.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class CreateTransfer extends StatelessWidget {
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

  const CreateTransfer({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                const SearchCard(
                  heading: 'Transfer Order',
                  searchText: 'Search',
                  sizeFactor: 2.4,
                ),
                Card(
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  commonText('No.* ', fontSize: 13),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  commonText('TRANS-PP-22-23-019',
                                      color: Colors.grey.shade700,
                                      fontSize: 10),
                                ],
                              ),
                              SizedBox(
                                height: fontSize,
                              ),
                              Row(
                                children: [
                                  commonText('Transfer To ', fontSize: 13),
                                  SizedBox(
                                    width: fontSize,
                                  ),
                                  commonTextBox(),
                                ],
                              ),
                              SizedBox(
                                height: fontSize,
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  commonText('Transfer from Code* ',
                                      fontSize: 13),
                                  SizedBox(
                                    height: fontSize,
                                  ),
                                  commonText('GCN ',
                                      fontSize: 10, color: Colors.grey.shade700)
                                ],
                              ),
                              SizedBox(
                                height: fontSize,
                              ),
                              Row(
                                children: [
                                  commonText('GCN ', fontSize: 13),
                                  SizedBox(
                                    width: fontSize,
                                  ),
                                  commonTextBox(text: 'PAT'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
                InkWell(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const TransferOrderList()));
                  },
                  child: Card(
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
                                commonText('Item Name',
                                    color: Colors.grey.shade700),
                                SizedBox(
                                  height: fontSize / 4,
                                ),
                                commonText(
                                  'Description :',
                                ),
                                SizedBox(
                                  height: fontSize / 4,
                                ),
                                commonText(
                                  'MRP Value :',
                                ),
                                SizedBox(
                                  height: fontSize * 1 / 1.5,
                                ),
                                InkWell(
                                  onTap: () {
                                    //Show Dialog
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return const PopDialog(
                                            hintTitle: 'Enter Lot No.',
                                            title: 'Lot No.',
                                            text: '',
                                          );
                                        });
                                  },
                                  child: Row(
                                    children: [
                                      commonText(
                                        'Lot No. : ',
                                      ),
                                      commonText('stackerbee',
                                          color: Colors.grey.shade700)
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: fontSize * 1 / 2,
                                ),
                                InkWell(
                                  onTap: () {
                                    //Show Dialog
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          return const PopDialog(
                                            hintTitle: 'Enter Serial No.',
                                            title: 'Serial No.',
                                            text: '',
                                          );
                                        });
                                  },
                                  child: Row(
                                    children: [
                                      commonText(
                                        'Serial No. : ',
                                      ),
                                      commonText('001',
                                          color: Colors.grey.shade700),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            SizedBox(
                                height: fontSize * 6,
                                width: fontSize * 7,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: fontSize / 2,
                                ),
                                Row(
                                  children: [
                                    commonText('Qty to Ship   ',
                                        fontSize: fontSize * 1.3),
                                    Container(
                                      alignment: Alignment.center,
                                      width: fontSize * 2.5,
                                      height: fontSize * 2.5,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          border: Border.all(
                                            color: const Color.fromRGBO(
                                                236, 100, 42, 1),
                                            width: 1,
                                          )),
                                      child: Text(
                                        '10',
                                        style: TextStyle(
                                            color: const Color.fromRGBO(
                                                236, 100, 42, 1),
                                            fontSize: fontSize * 1.5,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    commonText('Shipped/Remain Qty    ',
                                        fontSize: 11),
                                    commonText('7/3',
                                        color: Colors.grey.shade700,
                                        fontSize: 11),
                                  ],
                                ),
                              ],
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.sizeOf(context).height * .4,
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

//PopUp Dialog
class PopDialog extends StatelessWidget {
  final String title;
  final String hintTitle;
  final String text;

  const PopDialog(
      {Key? key,
      required this.title,
      required this.hintTitle,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        height: 180,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 34, left: 25, right: 25, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff391F84)),
                  ),
                  Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: 30,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                              color: const Color.fromRGBO(236, 100, 42, 1),
                              width: 1,
                            )),
                        child: const Text(
                          '0',
                          style: TextStyle(
                            color: Color.fromRGBO(236, 100, 42, 1),
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const Text(
                        ' /10',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 12, right: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                gradient: const LinearGradient(
                    colors: [Colors.white, Color(0xff391F84)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
              child: Container(
                height: 35,
                margin: const EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      hintText: hintTitle,
                      border: const UnderlineInputBorder(
                          borderSide: BorderSide.none)),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 26.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 77,
                    height: 25,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffD9D9D9)),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Cancel",
                          style: TextStyle(color: Color(0xff636363)),
                        )),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 77,
                    height: 25,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffEC642A)),
                        onPressed: () {},
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
