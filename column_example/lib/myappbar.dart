import 'package:flutter/material.dart';

class MyAppBar extends AppBar {
  MyAppBar({
    Key? key,
    required Widget title,
  }) : super(key: key, title: title);
}
// class MyAppBar extends StatefulWidget {
//   final String titleText;
//   MyAppBar({Key? key, required this.titleText}) : super(key: key);

//   @override
//   _MyAppBarState createState() => _MyAppBarState();
// }

// class _MyAppBarState extends State<MyAppBar> {

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: Text(
//         titleText,
//       ),
//     );
//   }
// }

// class BaseAppBar extends StatefulWidget implements PreferredSizeWidget {
//   final Color backgroundColor;
//   final Text title;
//   final AppBar appBar;

//   const BaseAppBar({Key? key,
//     required this.backgroundColor,
//     required this.title,
//     required this.appBar}):super(key:key);
  

//   @override
//   State<BaseAppBar> createState() => _BaseAppBarState();
// }

// class _BaseAppBarState extends State<BaseAppBar> {
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       title: widget.title,
//       backgroundColor: widget.backgroundColor,
//     );
//   }

//   @override
//   Size get preferredSize => Size.fromHeight(widget.appBar.preferredSize.height);
// }
