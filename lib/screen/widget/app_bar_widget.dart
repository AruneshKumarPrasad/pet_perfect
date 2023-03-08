import 'package:flutter/material.dart';
import 'package:pet_perfect/global/text_schemes.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MyAppBar({
    super.key,
    required this.titleForAppbar,
    this.leadingWidget,
    this.trailingWidgets,
  });
  final String titleForAppbar;
  final Widget? leadingWidget;
  final Widget? trailingWidgets;

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
}

class _MyAppBarState extends State<MyAppBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        title: Text(
          widget.titleForAppbar,
          style: GText.headingTextStyle,
        ),
        centerTitle: false,
        leading: widget.leadingWidget,
      ),
    );
  }
}
