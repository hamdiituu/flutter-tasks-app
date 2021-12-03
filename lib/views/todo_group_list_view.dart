import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_application/helpers/color_helper.dart';
import 'package:todo_application/models/group_model.dart';
import 'package:todo_application/widgets/create_group_card_widget.dart';
import 'package:todo_application/widgets/group_card_widget.dart';

class TodoGroupListView extends StatelessWidget {
  TodoGroupListView({Key? key}) : super(key: key);
  late Size _size;
  List<GroupModel> _list = [
    GroupModel(
        icon: Icon(Icons.pending_actions_outlined,
            size: 40, color: Colors.blueAccent),
        title: "Books",
        taskCount: 12),
    GroupModel(
        icon: Icon(Icons.menu, size: 40, color: Colors.red),
        title: "Web Site",
        taskCount: 9),
    GroupModel(
        icon: Icon(Icons.car_rental, size: 40, color: Colors.purpleAccent),
        title: "Phones",
        taskCount: 5)
  ];
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: HexColor.fromHex("fdfdfd"),
              statusBarIconBrightness: Brightness.dark),
          leading: const Icon(
            Icons.widgets,
            color: Colors.black,
          ),
          elevation: 0.0,
          backgroundColor: Colors.transparent),
      backgroundColor: HexColor.fromHex('#fdfdfd'),
      body: Container(
        padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              child: const Text(
                'Lists',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 10,
                  runSpacing: 10,
                  children: [...getGroups(), CreateGroupCardWidget()],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/todo_create');
        },
        child: const Icon(Icons.add_task),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  List<GroupCardWidget> getGroups() => _list
      .map((group) => GroupCardWidget(
            groupModel: group,
          ))
      .toList();
}
