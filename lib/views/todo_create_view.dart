import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_application/helpers/color_helper.dart';
import 'package:todo_application/widgets/detail_select_widget.dart';

class TodoCreateView extends StatelessWidget {
  TodoCreateView({Key? key}) : super(key: key);
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
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'New task',
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
                      'What are you planining?',
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
                        Icons.edit_notifications_outlined,
                        size: 35,
                        color: Colors.blueAccent,
                      ),
                      child: const Text(
                        'May 29, 14:00',
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w400),
                      )),
                  DetailSelectWidget(
                      icon: const Icon(
                        Icons.note_outlined,
                        size: 35,
                        color: Colors.grey,
                      ),
                      child: const Text(
                        'Add Note',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      )),
                  DetailSelectWidget(
                      icon: const Icon(
                        Icons.local_offer_outlined,
                        size: 35,
                        color: Colors.grey,
                      ),
                      child: const Text(
                        'Select Category',
                        style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey),
                      ))
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
