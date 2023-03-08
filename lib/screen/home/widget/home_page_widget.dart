import 'package:flutter/material.dart';
import 'package:pet_perfect/logic/api/api_fetch.dart';
import 'package:pet_perfect/screen/widget/app_bar_widget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late Size deviceSize;

  @override
  void didChangeDependencies() {
    deviceSize = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(titleForAppbar: 'My Home'),
      body: Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => APIFetch().getLinkFor(),
          child: Container(
            height: deviceSize.height * 0.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                'https://random.dog/e6e4f32c-bc93-461c-b785-e8a20c1c0be3.jpg',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
