import 'dart:convert';

import 'package:localstorage/localstorage.dart';

class LocalstorageHelper {
  late LocalStorage _storage;

  LocalstorageHelper({required String storageKey}) {
    _storage = LocalStorage(storageKey);
  }

  Map<String, dynamic> select(String key) {
    return json.decode(_storage.getItem(key));
  }

  Map<String, dynamic> insert(String key, dynamic value) {
    _storage.setItem(key, value);
    return select(key);
  }

  Map<String, dynamic> delete(String key) {
    var result = select(key);
    _storage.deleteItem(key);
    return result;
  }
}
