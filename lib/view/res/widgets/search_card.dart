import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final fontSize = 10;
  final String heading;
  final String searchText;
  final double sizeFactor;
  const SearchCard(
      {Key? key,
      required this.heading,
      required this.searchText,
      this.sizeFactor = 2.2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width * .5;
    print(heading.length);
    print(width);
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              heading,
              style: const TextStyle(
                color: Color.fromRGBO(57, 31, 132, 1),
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
              width: width - 3 * heading.length,
              child: TextFormField(
                decoration: InputDecoration(
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade500,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4)),
                  hintText: searchText,
                  hintStyle:
                      TextStyle(height: 0.2, color: Colors.grey.shade500),
                ),
                // onChanged: (value) {
                //   setState(() {
                //   });
                // },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter something";
                  }
                  return null;
                },
              ),
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
                        color: const Color.fromRGBO(236, 100, 42, 1),
                        width: 1,
                      )),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: fontSize * 7 / 5,
                        color: const Color.fromRGBO(236, 100, 42, 1),
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 4, right: 4),
                  child: Text(
                    '1',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color.fromRGBO(57, 31, 132, 1),
                    ),
                  ),
                ),
                Container(
                  width: fontSize * 3,
                  height: fontSize * 3,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(
                        color: const Color.fromRGBO(236, 100, 42, 1),
                        width: 1,
                      )),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        size: fontSize * 7 / 5,
                        color: const Color.fromRGBO(236, 100, 42, 1),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
