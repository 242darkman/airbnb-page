import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context){
    return AppBar(
      title: const Text("Campagne"),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}