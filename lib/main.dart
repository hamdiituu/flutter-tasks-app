import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:todo_application/views/todo_create_view.dart';
import 'package:todo_application/views/todo_detail_view.dart';
import 'package:todo_application/views/todo_group_create_view.dart';
import 'package:todo_application/views/todo_group_list_view.dart';

void main() => runApp(
    DevicePreview(enabled: false, builder: (context) => const Application()));

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: true,
      title: "Todo Application",
      initialRoute: '/todo_group_list',
      getPages: [
        GetPage(
            name: '/todo_group_list',
            transition: Transition.cupertino,
            page: () => TodoGroupListView()),
        GetPage(
            name: '/todo_group_create',
            transition: Transition.cupertino,
            page: () => TodoGroupCreateView()),
        GetPage(
            name: '/todo_detail',
            transition: Transition.cupertino,
            page: () => TodoDetailView()),
        GetPage(
            name: '/todo_create',
            transition: Transition.cupertino,
            page: () => TodoCreateView())
      ],
    );
  }
}
