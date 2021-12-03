import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_application/helpers/color_helper.dart';
import 'package:todo_application/widgets/detail_select_widget.dart';

class TodoGroupCreateView extends StatelessWidget {
  TodoGroupCreateView({Key? key}) : super(key: key);
  late Size _size;
  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: HexColor.fromHex("#fdfdfd"),
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: HexColor.fromHex("fdfdfd"),
              statusBarIconBrightness: Brightness.dark),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          title: Text(
            'Create New Group ',
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.w400),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.close,
                  size: 30.0,
                  color: Colors.black,
                ))
          ]),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: _size.height / 5,
              child: const TextField(
                decoration: InputDecoration(
                    label: Text(
                      'How should it be grouped?',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
                    ),
                    border: UnderlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent)),
                    floatingLabelStyle: TextStyle(color: Colors.blueAccent)),
              ),
            ),
            const Divider(thickness: 1),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DetailSelectWidget(
                      icon: const Icon(
                        Icons.auto_fix_high,
                        size: 35,
                        color: Colors.blueAccent,
                      ),
                      child: const Text(
                        'Add Icon',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w400),
                      )),
                  DetailSelectWidget(
                      icon: const Icon(
                        Icons.palette_outlined,
                        size: 35,
                        color: Colors.grey,
                      ),
                      child: const Text(
                        'Add Color',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0), // <-- Radius
            ),
            primary: HexColor.fromHex('#5886FF'),
            minimumSize: Size(_size.width, 50)),
        onPressed: () {},
        child: Text('Create', style: TextStyle(fontSize: 20)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
