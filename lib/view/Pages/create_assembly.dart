import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class CreateAssembly extends StatelessWidget {
  final fontSize = 12.00;

  Widget commonText(
    String text, {
    Color color = darkBlue,
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
            border: const OutlineInputBorder(
                borderSide: BorderSide(color: greyColor)),
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
    int numberofPages;
    int currentPage;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Pages_AppBar(),
        ),
        bottomNavigationBar: const BottomNavigation(),
        body: SingleChildScrollView(
          child: SizedBox(
            child: Column(
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
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: fontSize * 2.2,
                                      ),
                                      commonText('No. * ', fontSize: 10),
                                      const SizedBox(width: 10),
                                      const Text(
                                        " Asmbly-PP/21/100445.",
                                        style: TextStyle(
                                            color: textColor,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: fontSize * 1,
                                  ),
                                  Row(
                                    children: [
                                      commonText('No. of Qty * ', fontSize: 10),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: fontSize * 2,
                                        width: fontSize * 8,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: greyColor),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: TextField(
                                          //controller: TextEditingController(text: prefillText),
                                          decoration: InputDecoration(
                                              // border: const OutlineInputBorder(),
                                              border: const OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 5),
                                              hintText: "10",
                                              hintStyle: TextStyle(
                                                fontSize: fontSize / 1.2,
                                                height: 0.7,
                                              )),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: commonText('Item No. * ',
                                            fontSize: 10),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        height: fontSize * 2,
                                        width: fontSize * 8,
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: greyColor),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: TextField(
                                          //controller: TextEditingController(text: prefillText),
                                          decoration: InputDecoration(
                                              // border: const OutlineInputBorder(),
                                              border: const OutlineInputBorder(
                                                  borderSide: BorderSide.none),
                                              contentPadding:
                                                  const EdgeInsets.only(
                                                      left: 5),
                                              hintText: "Select Items",
                                              hintStyle: TextStyle(
                                                fontSize: fontSize / 1.2,
                                                height: 0.7,
                                              )),
                                        ),
                                      )
                                    ],
                                  )
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    "Assembled Quantity : ",
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "0",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: fontSize,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Remaining Qty : ",
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Qty to Assemble : ",
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "10",
                                    style: TextStyle(
                                        color: primeColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
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
                SizedBox(
                  height: h * .5,
                  width: w,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return InkWell(
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "I-PP100821",
                                        style: TextStyle(
                                            color: darkBlue,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: fontSize / 2,
                                      ),
                                      const Text(
                                        "Description : ",
                                        style: TextStyle(
                                            color: darkBlue,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: fontSize / 1.5,
                                      ),
                                      const Text(
                                        "Qty per BOM : ",
                                        style: TextStyle(
                                            color: darkBlue,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: fontSize * 1 / 1.5,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            "Consumed / Remaining Qty : ",
                                            style: TextStyle(
                                                color: darkBlue,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "7 / 3",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: fontSize * 1 / 2,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            "Qty to Consume : ",
                                            style: TextStyle(
                                                color: darkBlue,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            "10",
                                            style: TextStyle(
                                                color: textColor,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: fontSize * 5,
                                    width: fontSize,
                                  ),
                                  SizedBox(
                                      height: fontSize * 6,
                                      width: fontSize * 7,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: boxColor,
                                          border: Border.all(
                                            color: boxColor,
                                          ),
                                        ),
                                        child: const Center(
                                          child: Text(
                                            'Item \n Image',
                                            style:
                                                TextStyle(color: Colors.white),
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
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
