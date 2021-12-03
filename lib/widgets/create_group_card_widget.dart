import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CreateGroupCardWidget extends StatelessWidget {
  CreateGroupCardWidget({Key? key}) : super(key: key);
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    double _width = _size.width > 400 ? 150 : _size.width / 2 - 20;
    return InkWell(
      onTap: () {
        Get.toNamed('/todo_group_create');
      },
      child: Container(
        width: _width,
        height: _width,
        decoration: BoxDecoration(
            //border: Border.all(color: Colors.blueAccent),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(8.0))),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.add_road, size: 40, color: Colors.blueAccent),
              Container(
                  margin: const EdgeInsets.only(top: 19),
                  child: Text('Create Task Group',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: _width / 10,
                          fontWeight: FontWeight.w500))),
            ],
          ),
        ),
      ),
    );
  }
}
