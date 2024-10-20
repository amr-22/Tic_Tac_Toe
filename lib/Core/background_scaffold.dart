import 'package:flutter/material.dart';

class BackgroundScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;

  const BackgroundScaffold({
    Key? key,
    required this.body,
    this.appBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return Scaffold(
      body: Container(
        width: w,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/background_image.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: body,
      ),
    );
  }
}
