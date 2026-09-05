import 'package:flutter/material.dart';

class SubmitDetailAlertBox extends StatelessWidget {
  const SubmitDetailAlertBox({super.key});

  Widget commonText(
    String text, {
    Color color = const Color.fromRGBO(57, 31, 132, 1),
    double fontSize = 10.00,
    FontWeight weight = FontWeight.bold,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: weight,
        fontSize: fontSize,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => Stack(
            children: <Widget>[
              AlertDialog(
                title:
                    Center(child: commonText('Submit Details', fontSize: 25)),
                titlePadding: const EdgeInsets.only(top: 45),
                content: commonText(
                    'Are you sure you want to submit these details',
                    fontSize: 18,
                    color: Colors.grey.shade700,
                    weight: FontWeight.normal),
                actions: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey.shade400,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: commonText('No')),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(236, 100, 42, 1),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: commonText('Yes')),
                    ],
                  )
                ],
              ),
              Positioned(
                  left: MediaQuery.of(context).size.width * 0.40,
                  top: MediaQuery.of(context).size.height * 0.30,
                  child: Material(
                    elevation: 2,
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        Icons.question_mark,
                        size: 60,
                        color: Color.fromRGBO(236, 100, 42, 1),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        child: const Text('Show Dialog'),
      ),
    );
  }
}
