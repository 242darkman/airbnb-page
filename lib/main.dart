import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/tabs/campagne_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Airbnb Page Example",
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink.shade600)),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Où partons-nous ?"),
          bottom: const TabBar(
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            tabs: [
              Tab(text: 'Campagne', icon: Icon(Icons.house_siding)),
              Tab(text: 'Sur l\'eau', icon: Icon(Icons.houseboat_outlined)),
              Tab(text: "Avec vue", icon: Icon(Icons.panorama)),
              Tab(text: "Bord de mer", icon: Icon(Icons.scuba_diving)),
              Tab(text: "Ski", icon: Icon(Icons.downhill_skiing)),
            ],
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_box),
              color: Colors.pink.shade600,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => LoginScreen())
                );
              },
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CampagneScreen(),
            Text('Sur l\'eau'),
            Text('Avec vue'),
            Text('Bord de mer'),
            Text('Ski'),
          ],
        ),
      ),
    );
  }
}

