import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Où partons-nous ?"),
          centerTitle: false,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_box),
              color: Colors.pink.shade600,
              onPressed: () { }
              )
            ],
          bottom: const TabBar(
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'Campagne',
                icon: Icon(Icons.house_siding),
              ),
              Tab(
                text: 'Sur l\'eau',
                icon: Icon(Icons.houseboat_outlined),
              ),
              Tab(
                text: "Avec vue",
                icon: Icon(Icons.panorama),
              ),
              Tab(
                text: "Bord de mer",
                icon: Icon(Icons.scuba_diving),
              ),
              Tab(
                text: "Ski",
                icon: Icon(Icons.downhill_skiing),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + kTextTabBarHeight);
}
