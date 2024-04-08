import 'package:flutter/material.dart';

/**
 * Définition de la classe FavoriteButton qui étend StatefulWidget.
 * Ceci nous permettra de créer un widget qui pourra changer d'état pour notre bouton favoris.
 */
class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorited = false;

  void _toggleFavorite() {
    setState(() {
      isFavorited = !isFavorited;
    });
  }

  @override
  Widget build(BuildContext) {
    return IconButton(
        onPressed: _toggleFavorite,
        icon: Icon(
            isFavorited ? Icons.favorite : Icons.favorite_border,
            color: Colors.red,
        )
    );
  }
}