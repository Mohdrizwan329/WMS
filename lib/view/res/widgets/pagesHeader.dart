import 'package:flutter/material.dart';

class Pages_AppBar extends StatelessWidget {
  const Pages_AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}
