import 'package:flutter/material.dart';
import 'package:stack_assignment/presentation/custom/safe_scaffold.dart';

class HomePage extends StatelessWidget {
  static const String routeNamed = "HomePage";

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
        body: const Center(
      child: Text("Home Page"),
    ));
  }
}
