import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todo_application/models/group_model.dart';
import 'package:todo_application/models/todo_model.dart';

class TodoController extends GetxController {
  @override
  void onInit() {
    // get ready groups
    // get ready todos
    super.onInit();
  }

  void addTodo(TodoModel model) {}

  void addGroup(GroupModel model) {}

  void getTodos(int groupId) {}

  void getGroups() {}

  void deleteTodo(int todoId) {}

  void deleteGroup(int groupId) {}

  void changeStatusTodo(int todoId, bool status) {}
}
