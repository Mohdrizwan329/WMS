import 'package:flutter/material.dart';
import 'package:stackerbee_app/utils/color.dart';
import 'package:stackerbee_app/view/Pages/create_assembly.dart';
import 'package:stackerbee_app/view/res/widgets/bottomNavigationBar.dart';
import 'package:stackerbee_app/view/res/widgets/pagesHeader.dart';
import 'package:stackerbee_app/view/res/widgets/search_card.dart';

class AssemblyDetail extends StatelessWidget {
  final fontSize = 10.00;

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

  const AssemblyDetail({Key? key}) : super(key: key);

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
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              commonText('Assembly Order List', fontSize: 12),
                              SizedBox(
                                height: fontSize * 1.2,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Doc No. : ",
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Text(
                                    "Asmbly-PP/21-23/100441",
                                    style: TextStyle(
                                        color: textColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Qty to Assemble : ",
                                style: TextStyle(
                                    color: darkBlue,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: fontSize * 1.5,
                              ),
                              const Text(
                                "Assembled Qty/Qty : ",
                                style: TextStyle(
                                    color: darkBlue,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "10",
                                style: TextStyle(
                                    color: primeColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: fontSize,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "5 ",
                                    style: TextStyle(
                                        color: primeColor,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "/10",
                                    style: TextStyle(
                                        color: darkBlue,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      )),
                ),

                SizedBox(
                  height: h * .6,
                  width: w,
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Card(
                        child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      "Item Name",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 10,
                                          fontWeight: FontWeight.w500),
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
                                      height: fontSize * 1 / 1.5,
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "Qty to Assemble : ",
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
                                    SizedBox(
                                      height: fontSize * 1 / 2,
                                    ),
                                    const Row(
                                      children: [
                                        Text(
                                          "Remaining Qty : ",
                                          style: TextStyle(
                                              color: darkBlue,
                                              fontSize: 10,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          "5",
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
                                  width: fontSize * 5,
                                ),
                                SizedBox(
                                    height: fontSize * 7,
                                    width: fontSize * 8,
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
                                          height: fontSize * 2.5,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                color: greyColor,
                                                width: 1,
                                              )),
                                          child: const Text(
                                            '0',
                                            style: TextStyle(
                                                color: primeColor,
                                                fontSize: 17,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        const Text(
                                          " /5",
                                          style: TextStyle(
                                              color: darkBlue,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      "PCS",
                                      style: TextStyle(
                                          color: textColor,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                )
                              ],
                            )),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                //Buttons
                SizedBox(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        width: w * .45,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xffDBDBDB)),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Cancel",
                              style: TextStyle(color: Color(0xff636363)),
                            )),
                      ),
                      SizedBox(
                        width: w * .45,
                        height: 38,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff391F84)),
                            onPressed: () {
                              //PopUp Dialog for Confirmation;
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const BoxSubmitDetailsPopup();
                                  });
                            },
                            child: const Text(
                              "Submit",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 234, 232, 232)),
                            )),
                      )
                    ],
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

//Popup Submit  Btn
class BoxSubmitDetailsPopup extends StatelessWidget {
  const BoxSubmitDetailsPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              width: 320,
              height: 170,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Text(
                    "Submit Details",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: darkBlue),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Are you sure you want to submit \n these details",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: textColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 77,
                        height: 25,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: greyColor),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "No",
                              style: TextStyle(color: textColor),
                            )),
                      ),
                      const SizedBox(width: 15),
                      SizedBox(
                        width: 77,
                        height: 25,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                elevation: 0, backgroundColor: primeColor),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CreateAssembly()));
                            },
                            child: const Text(
                              "Yes",
                              style: TextStyle(color: Colors.white),
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
            const Positioned(
                top: -35,
                child: SizedBox(
                  width: 70,
                  height: 70,
                  child: Card(
                    elevation: 2,
                    shape: CircleBorder(),
                    child: Icon(
                      Icons.question_mark,
                      size: 40,
                      color: Color(0xffEC642A),
                    ),
                  ),
                ))
          ]),
    );
  }
}
