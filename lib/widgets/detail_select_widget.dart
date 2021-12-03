import 'package:flutter/material.dart';

class DetailSelectWidget extends StatelessWidget {
  Icon icon;
  Widget child;
  DetailSelectWidget({Key? key, required this.icon, required this.child})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          icon,
          Container(margin: EdgeInsets.only(left: 20), child: child)
        ],
      ),
    );
  }
}
