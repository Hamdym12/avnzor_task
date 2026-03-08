import 'package:avnzor_task/core/constants/app_assets.dart';
import '../../domain/entities/store_item_entity.dart';

/// Data model for a single store menu item.
class StoreItemModel {
  const StoreItemModel({
    required this.id,
    required this.name,
    required this.restaurantName,
    required this.rating,
    required this.priceSar,
    this.imagePath = AppAssets.biryaniBackground,
  });

  final String id;
  final String name;
  final String restaurantName;
  final double rating;
  final double priceSar;
  final String imagePath;

  factory StoreItemModel.fromJson(Map<String, dynamic> json) {
    return StoreItemModel(
      id: json['id']?.toString() ?? '',
      name: json['name'] ?? json['title'] ?? '',
      restaurantName: json['restaurant_name'] ?? 'Dum Hub',
      rating: (json['rating'] ?? 4.5).toDouble(),
      priceSar: (json['price_sar'] ?? 20.0).toDouble(),
      imagePath: json['image_path'] ?? AppAssets.biryaniBackground,
    );
  }

  StoreItemEntity toEntity() {
    return StoreItemEntity(
      id: id,
      name: name,
      restaurantName: restaurantName,
      rating: rating,
      priceSar: priceSar,
      imagePath: imagePath,
    );
  }
}
