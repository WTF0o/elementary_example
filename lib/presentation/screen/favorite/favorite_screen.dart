import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/presentation/screen/favorite/favorite_wm.dart';
import 'package:elementary_test/presentation/screen/main/main_screen.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends ElementaryWidget<FavoriteWidgetModel> {
  const FavoriteScreen(super.wmFactory);

  @override
  Widget build(FavoriteWidgetModel wm) {
    return EntityStateNotifierBuilder<List<Advert>?>(
      listenableEntityState: wm.favoriteListenableModel.favoriteCars,
      loadingBuilder: (context, state) =>
          const Center(child: CircularProgressIndicator(color: Color(0xFF2979FF))),
      errorBuilder: (context, error, stackTrace) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.error_outline, size: 48, color: Colors.red),
            const SizedBox(height: 16),
            Text(error.toString(), textAlign: TextAlign.center),
          ],
        ),
      ),
      builder: (context, state) {
        if (state == null || state.isEmpty) return const SizedBox.shrink();
        return ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: state.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final advert = state[index];
            return AdvertCard(advert: advert, wm: wm);
          },
        );
      },
    );
  }
}
