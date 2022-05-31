import 'package:crud_person/components/user_tile.dart';
import 'package:crud_person/data/dummy_users.dart';
import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, i) =>
            UserTile(user: users.values.elementAt(i))),
        itemCount: users.length,
      ),
    );
  }
}
