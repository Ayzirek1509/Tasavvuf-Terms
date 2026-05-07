import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  Future<List<String>> getFavs() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList('favorites') ?? [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sevimlilar")),
      body: FutureBuilder(
        future: getFavs(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final favs = snapshot.data!;

          if (favs.isEmpty) {
            return const Center(child: Text("Sevimlilar yo‘q"));
          }

          return ListView.builder(
            itemCount: favs.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(favs[index]),
              );
            },
          );
        },
      ),
    );
  }
}