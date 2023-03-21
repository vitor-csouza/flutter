
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Diego'),
                accountEmail: Text('email@email.com'),
                currentAccountPicture: CircleAvatar(),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('Saldo'),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('Saldo'),
              ),
              ListTile(
                leading: Icon(Icons.account_balance),
                title: Text('Saldo'),
              ),
            ],
          ),
        );
  }
}