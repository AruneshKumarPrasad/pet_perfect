import 'package:flutter/material.dart';
import 'package:pet_perfect/screen/widget/app_bar_widget.dart';

class UsersPageWidget extends StatefulWidget {
  const UsersPageWidget({super.key});

  @override
  State<UsersPageWidget> createState() => _UsersPageWidgetState();
}

class _UsersPageWidgetState extends State<UsersPageWidget> {
  late Size deviceSize;

  @override
  void didChangeDependencies() {
    deviceSize = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(titleForAppbar: 'Users',),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
            horizontal: 25, vertical: deviceSize.height * 0.125),
        child: Container(
          height: deviceSize.height * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(
            child: Icon(
              Icons.people,
              size: 100,
            ),
          ),
        ),
      ),
    );
  }
}
