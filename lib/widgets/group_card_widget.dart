import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_application/models/group_model.dart';

// ignore: must_be_immutable
class GroupCardWidget extends StatelessWidget {
  GroupCardWidget({Key? key, required this.groupModel}) : super(key: key);
  late Size _size;
  GroupModel groupModel;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    double _width = _size.width > 400 ? 150 : _size.width / 2 - 20;
    return InkWell(
      onTap: () {
        Get.toNamed('/todo_detail');
      },
      child: Container(
        padding: EdgeInsets.only(top: 8),
        width: _width,
        height: _width,
        decoration: BoxDecoration(
            //border: Border.all(color: Colors.blueAccent),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(8.0))),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              groupModel.icon,
              Container(
                  margin: EdgeInsets.only(top: _width / 10),
                  child: Text(groupModel.title,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: _width / 8,
                          fontWeight: FontWeight.w500))),
              Container(
                  margin: EdgeInsets.only(top: _width / 15),
                  child: Text('${groupModel.taskCount} Tasks',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: _width / 10,
                          fontWeight: FontWeight.w300))),
            ],
          ),
        ),
      ),
    );
  }
}
