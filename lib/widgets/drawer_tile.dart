import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {
  final String text;
  final Widget leading;
  final void Function()? onTap;
  const DrawerTile(
      {super.key,
      required this.leading,
      required this.text,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
              color: Theme.of(context).colorScheme.inversePrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        leading: leading,
        onTap: onTap,
      ),
    );
  }
}
