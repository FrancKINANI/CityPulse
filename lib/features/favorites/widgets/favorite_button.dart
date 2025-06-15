import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:citypulse/services/favorite_service.dart';
import 'package:citypulse/models/favorite_item.dart';

class FavoriteButton extends StatefulWidget {
  final String itemId;
  final String itemType;
  final String title;
  final String imageUrl;
  final double rating;
  final String category;

  const FavoriteButton({
    super.key,
    required this.itemId,
    required this.itemType,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.category,
  });

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool _isFavorite = false;
  final FavoriteService _favoriteService = FavoriteService();

  @override
  void initState() {
    super.initState();
    _checkFavoriteStatus();
  }

  Future<void> _checkFavoriteStatus() async {
    final userId = Provider.of<String>(context, listen: false);
    final isFavorite = await _favoriteService.isFavorite(userId, widget.itemId);
    setState(() {
      _isFavorite = isFavorite;
    });
  }

  Future<void> _toggleFavorite() async {
    final userId = Provider.of<String>(context, listen: false);
    
    if (_isFavorite) {
      await _favoriteService.removeFavorite(widget.itemId);
    } else {
      final favorite = FavoriteItem(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        userId: userId,
        itemId: widget.itemId,
        itemType: widget.itemType,
        title: widget.title,
        imageUrl: widget.imageUrl,
        rating: widget.rating,
        category: widget.category,
        createdAt: DateTime.now(),
      );
      await _favoriteService.addFavorite(favorite);
    }

    setState(() {
      _isFavorite = !_isFavorite;
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(_isFavorite ? 'Ajouté aux favoris' : 'Retiré des favoris'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        _isFavorite ? Icons.favorite : Icons.favorite_border,
        color: _isFavorite ? Colors.red : Colors.grey,
      ),
      onPressed: _toggleFavorite,
    );
  }
}
