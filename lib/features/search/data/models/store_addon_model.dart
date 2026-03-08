import 'package:avnzor_task/core/constants/app_assets.dart';
import '../../domain/entities/store_addon_entity.dart';

class StoreAddonModel {
  const StoreAddonModel({
    required this.id,
    required this.name,
    required this.priceSar,
    this.imagePath = AppAssets.biryaniBackground,
  });

  final String id;
  final String name;
  final double priceSar;
  final String imagePath;

  factory StoreAddonModel.fromJson(Map<String, dynamic> json) {
    return StoreAddonModel(
      id: json['id']?.toString() ?? '',
      name: json['name'] ?? '',
      priceSar: (json['price_sar'] ?? 0.0).toDouble(),
      imagePath: json['image_path'] ?? AppAssets.biryaniBackground,
    );
  }

  StoreAddonEntity toEntity() {
    return StoreAddonEntity(
      id: id,
      name: name,
      priceSar: priceSar,
      imagePath: imagePath,
    );
  }

  static const List<StoreAddonModel> sampleAddons = [
    StoreAddonModel(id: '1', name: 'Raita', priceSar: 4),
    StoreAddonModel(id: '2', name: 'Salad', priceSar: 5),
    StoreAddonModel(id: '3', name: 'Boiled Egg', priceSar: 3),
    StoreAddonModel(id: '4', name: 'Chicken 65', priceSar: 12),
    StoreAddonModel(id: '5', name: 'Kabab', priceSar: 10),
    StoreAddonModel(id: '6', name: 'Soft Drink', priceSar: 4),
    StoreAddonModel(id: '7', name: 'Extra Rice', priceSar: 6),
    StoreAddonModel(id: '8', name: 'Dessert', priceSar: 8),
  ];
}
