import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:elementary_test/domain/model/cars_model.dart';
import 'package:elementary_test/presentation/widget_model_interface/favorite_interface.dart';
import 'package:flutter/material.dart';

import 'package:elementary_test/presentation/screen/main/main_wm.dart';

class MainScreen extends ElementaryWidget<MainWidgetModel> {
  const MainScreen(super.wmFactory);

  @override
  Widget build(MainWidgetModel wm) {
    return EntityStateNotifierBuilder<CarsModel>(
      listenableEntityState: wm.mainListenableModel.cars,
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
        if (state == null) return const SizedBox.shrink();
        return ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: state.adverts.length,
          separatorBuilder: (_, _) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            final advert = state.adverts[index];
            return AdvertCard(advert: advert, key: ValueKey(advert.id), wm: wm);
          },
        );
      },
    );
  }
}

class AdvertCard extends StatelessWidget {
  final Advert advert;
  final IFavoriteWidgetModel wm;

  const AdvertCard({required this.advert, required this.wm, super.key});

  String _formatPrice(int amount) {
    final str = amount.toString();
    final buffer = StringBuffer();
    for (var i = 0; i < str.length; i++) {
      if (i > 0 && (str.length - i) % 3 == 0) {
        buffer.write(' ');
      }
      buffer.write(str[i]);
    }
    return buffer.toString();
  }

  String _getCarTitle() {
    final brand = advert.properties.firstWhere(
      (p) => p.name == 'brand',
      orElse: () => Property(fallbackType: '', value: '', id: 0, name: ''),
    );
    final model = advert.properties.firstWhere(
      (p) => p.name == 'model',
      orElse: () => Property(fallbackType: '', value: '', id: 0, name: ''),
    );

    final brandValue = brand.value is Map
        ? brand.value['label'] ?? ''
        : brand.value?.toString() ?? '';
    final modelValue = model.value is Map
        ? model.value['label'] ?? ''
        : model.value?.toString() ?? '';

    if (brandValue.isEmpty && modelValue.isEmpty) {
      return 'Автомобиль';
    }
    return '$brandValue $modelValue'.trim();
  }

  String _getCarSpecs() {
    final specs = <String>[];

    specs.add('${advert.year} г.');

    final transmission = advert.properties.firstWhere(
      (p) => p.name == 'transmission_type',
      orElse: () => Property(fallbackType: '', value: null, id: 0, name: ''),
    );
    if (transmission.value != null) {
      final transValue = transmission.value is Map
          ? transmission.value['label']
          : transmission.value?.toString();
      if (transValue != null && transValue.toString().isNotEmpty) {
        specs.add(transValue.toString().toLowerCase());
      }
    }

    final engine = advert.properties.firstWhere(
      (p) => p.name == 'engine_capacity',
      orElse: () => Property(fallbackType: '', value: null, id: 0, name: ''),
    );
    final fuelType = advert.properties.firstWhere(
      (p) => p.name == 'engine_type',
      orElse: () => Property(fallbackType: '', value: null, id: 0, name: ''),
    );

    if (engine.value != null) {
      final engineValue = engine.value is num
          ? (engine.value / 1000).toStringAsFixed(1)
          : engine.value?.toString();
      final fuelValue = fuelType.value is Map
          ? fuelType.value['label']
          : fuelType.value?.toString();
      if (engineValue != null) {
        var engineSpec = '$engineValue л';
        if (fuelValue != null && fuelValue.toString().isNotEmpty) {
          engineSpec += ', ${fuelValue.toString().toLowerCase()}';
        }
        specs.add(engineSpec);
      }
    }

    final bodyType = advert.properties.firstWhere(
      (p) => p.name == 'body_type',
      orElse: () => Property(fallbackType: '', value: null, id: 0, name: ''),
    );
    if (bodyType.value != null) {
      final bodyValue = bodyType.value is Map
          ? bodyType.value['label']
          : bodyType.value?.toString();
      if (bodyValue != null && bodyValue.toString().isNotEmpty) {
        specs.add(bodyValue.toString().toLowerCase());
      }
    }

    return specs.join(', ');
  }

  String _getMileage() {
    final mileage = advert.properties.firstWhere(
      (p) => p.name == 'mileage_km',
      orElse: () => Property(fallbackType: '', value: null, id: 0, name: ''),
    );
    if (mileage.value != null) {
      final value = mileage.value is num
          ? mileage.value.toInt()
          : int.tryParse(mileage.value.toString()) ?? 0;
      return '${_formatPrice(value)} км';
    }
    return '';
  }

  @override
  Widget build(BuildContext context) {
    final mainPhoto = advert.photos.isNotEmpty
        ? advert.photos.firstWhere((p) => p.main, orElse: () => advert.photos.first)
        : null;

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Фото
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
              child: SizedBox(
                width: 120,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    if (mainPhoto != null)
                      Image.network(
                        mainPhoto.small.url,
                        fit: BoxFit.cover,
                        errorBuilder: (_, _, _) => Container(
                          color: const Color(0xFFE0E0E0),
                          child: const Icon(Icons.directions_car, size: 40, color: Colors.grey),
                        ),
                      )
                    else
                      Container(
                        color: const Color(0xFFE0E0E0),
                        child: const Icon(Icons.directions_car, size: 40, color: Colors.grey),
                      ),
                  ],
                ),
              ),
            ),
            // Информация
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Название и год
                    Text(
                      _getCarTitle(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF2979FF),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    // Характеристики
                    Text(
                      _getCarSpecs(),
                      style: const TextStyle(fontSize: 11, color: Color(0xFF666666)),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 3),
                    // Пробег
                    Text(
                      _getMileage(),
                      style: const TextStyle(
                        fontSize: 11,
                        color: Color(0xFF333333),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    // Описание
                    if (advert.description.isNotEmpty) ...[
                      Text(
                        advert.description,
                        style: const TextStyle(fontSize: 10, color: Color(0xFF888888)),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(height: 4),
                    ],
                    // Локация и дата
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            advert.shortLocationName,
                            style: const TextStyle(fontSize: 10, color: Color(0xFF888888)),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          _formatDate(advert.refreshedAt),
                          style: const TextStyle(fontSize: 10, color: Color(0xFF888888)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Цена и действия
            Container(
              width: 110,
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Цена в рублях
                  Text(
                    '${_formatPrice(advert.price.byn.amount)} р.',
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const SizedBox(height: 2),
                  // Цена в долларах
                  Text(
                    '≈ ${_formatPrice(advert.price.usd.amount)} \$',
                    style: const TextStyle(fontSize: 11, color: Color(0xFF888888)),
                  ),
                  const SizedBox(height: 6),
                  const Spacer(),
                  // Иконка избранного
                  GestureDetector(
                    onTap: () {
                      wm.saveOrRemoveCarToFavorite(advert);
                    },
                    child: Icon(
                      advert.isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: const Color(0xFFBBBBBB),
                      size: 20,
                    ),
                  ),
                  const SizedBox(height: 6),
                  // Организация
                  if (advert.organizationTitle != null && advert.organizationTitle!.isNotEmpty)
                    Text(
                      advert.organizationTitle!,
                      style: const TextStyle(fontSize: 9, color: Color(0xFF2979FF)),
                      textAlign: TextAlign.end,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDate(String dateStr) {
    try {
      final date = DateTime.parse(dateStr);
      final now = DateTime.now();
      final diff = now.difference(date);

      if (diff.inDays == 0) {
        return 'сегодня';
      } else if (diff.inDays == 1) {
        return 'вчера';
      } else if (diff.inDays < 7) {
        return '${diff.inDays} ${_pluralDays(diff.inDays)} назад';
      } else {
        return '${date.day}.${date.month.toString().padLeft(2, '0')}';
      }
    } catch (_) {
      return '';
    }
  }

  String _pluralDays(int days) {
    if (days % 10 == 1 && days % 100 != 11) return 'день';
    if (days % 10 >= 2 && days % 10 <= 4 && (days % 100 < 10 || days % 100 >= 20)) return 'дня';
    return 'дней';
  }
}
