import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_application/helpers/color_helper.dart';

class TodoDetailView extends StatelessWidget {
  TodoDetailView({Key? key}) : super(key: key);
  late Size _size;

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor.fromHex('#5886FF'),
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              margin: EdgeInsets.only(left: 45),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      radius: 24.0,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.copy_all,
                        size: 30.0,
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('All',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Text('23 Tasks',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w300))
                    ],
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 4,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: ListView(
                  padding: EdgeInsets.only(bottom: 100),
                  children: [
                    TodoStatusTitle(
                      label: 'Late',
                    ),
                    TodoTile(),
                    TodoTile(),
                    TodoTile(),
                    TodoStatusTitle(
                      label: 'Now',
                    ),
                    TodoTile(),
                    TodoTile(),
                    TodoStatusTitle(
                      label: 'Done',
                    ),
                    TodoTile(),
                    TodoTile(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/todo_create');
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class TodoStatusTitle extends StatelessWidget {
  TodoStatusTitle({Key? key, required this.label}) : super(key: key);
  String label;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 25, bottom: 15),
        child: Text(
          label,
          style: const TextStyle(
              fontSize: 19, color: Colors.black45, fontWeight: FontWeight.w400),
        ));
  }
}

class TodoTile extends StatelessWidget {
  const TodoTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 12, bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Title',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5),
                    child: Text(
                      '20:15 - April 29',
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w300,
                          color: Colors.red),
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 1,
              child: Transform.scale(
                scale: 1.2,
                child: Checkbox(
                  side: MaterialStateBorderSide.resolveWith(
                    (states) => BorderSide(width: 1.0, color: Colors.grey),
                  ),
                  activeColor: Colors.blueAccent,
                  onChanged: (bool? value) {},
                  value: false,
                ),
              ))
        ],
      ),
    );
  }
}
