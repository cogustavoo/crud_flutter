import 'package:crud_person/components/user_tile.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/users.dart';

class UserList extends StatelessWidget {
  const UserList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
      ),
      body: ListView.builder(
        itemBuilder: ((context, i) => UserTile(user: users.byIndex(i))),
        itemCount: users.count,
      ),
    );
  }
}
