import 'package:flutter/material.dart';
import 'package:wei_huru/common/const/colors.dart';

class DefaultLayout extends StatelessWidget {
  final Widget child;
  final String? title;
  final Color? backgroundColor;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;

  const DefaultLayout({
    required this.child,
    this.title,
    this.backgroundColor,
    this.bottomNavigationBar,
    this.floatingActionButton,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RenderAppbar(),
      body: Column(
        children: [
          Expanded(
            child: child,
          ),
        ],
      ),
      bottomNavigationBar: bottomNavigationBar,
      floatingActionButton: floatingActionButton,
      backgroundColor: backgroundColor,
    );
  }

  AppBar? RenderAppbar() {
    if (title == null) {
      return null;
    } else {
      return AppBar(
        centerTitle: true,
        title: Text(
          title!,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        backgroundColor: COLOR_PRIMARY,
      );
    }
  }
}
