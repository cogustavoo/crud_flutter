import 'package:crud_person/data/dummy_users.dart';
import 'package:crud_person/models/users.dart';
import 'package:flutter/foundation.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<Users> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
