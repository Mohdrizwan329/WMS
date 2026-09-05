import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:stackerbee_app/utils/color.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            child: const Icon(Icons.menu, color: darkBlue),
            onTap: () {
              print("press Menu");
            },
          ),
          SizedBox(
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
          InkWell(
            child: SizedBox(
              width: 23,
              height: 25,
              child: SvgPicture.asset('assets/images/backarrow.svg'),
            ),
            onTap: () {
              print('Press back');
            },
          ),
        ],
      ),
    );
  }
}
