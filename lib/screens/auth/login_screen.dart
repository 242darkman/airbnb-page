import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: const Text('Connexion'),
        material: (_, __) => MaterialAppBarData(),
        cupertino: (_, __) => CupertinoNavigationBarData(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PlatformTextField(
              keyboardType: TextInputType.emailAddress,
              material: (_, __) => MaterialTextFieldData(
                  decoration: InputDecoration(
                    hintText: 'Adresse e-mail',
                    prefixIcon: Icon(Icons.email),
                  )
              ),
              cupertino: (_, __) => CupertinoTextFieldData(
                placeholder: 'Adresse e-mail',
                prefix: Icon(CupertinoIcons.mail),
              ),
            ),
            const SizedBox(height: 25),
            PlatformTextField(
              material: (_, __) => MaterialTextFieldData(
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    prefixIcon: Icon(Icons.lock),
                  )
              ),
              cupertino: (_, __) => CupertinoTextFieldData(
                placeholder: 'Mot de passe',
                obscureText: true,
                prefix: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4.0),
                    child: Icon(CupertinoIcons.mail)
                ),
              ),
            ),
            const SizedBox(height: 40),
            PlatformElevatedButton(
              onPressed: () {},
              material: (_, __) => MaterialElevatedButtonData(),
              cupertino: (_, __) => CupertinoElevatedButtonData(),
              child: Text('Se connecter'),
            )
          ],
        ),
      ),
    );
  }
}