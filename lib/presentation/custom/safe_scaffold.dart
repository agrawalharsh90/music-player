import 'package:flutter/material.dart';
import 'package:stack_assignment/constant/styles.dart';

class SafeScaffold extends StatelessWidget {
  SafeScaffold(
      {required this.body,
      this.backgroundColor = Styles.greyBgColor,
      this.bottomNavigationBar,
      this.floatingActionButton,
      this.drawer,
      this.appBar,
      this.onWillPop});

  final Widget body;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Function? onWillPop;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (onWillPop == null) return true;
          onWillPop!();
          return false;
        },
        child: SafeArea(
          child: Scaffold(
            drawer: drawer,
            body: body,
            appBar: appBar,
            backgroundColor: backgroundColor,
            bottomNavigationBar: bottomNavigationBar,
            floatingActionButton: floatingActionButton,
          ),
        ));
  }
}
