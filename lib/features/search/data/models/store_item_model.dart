import '../../domain/entities/store_item_entity.dart';

class StoreItemModel {
  const StoreItemModel({
    required this.id,
     this.name,
     this.restaurantName,
     this.rating,
     this.priceSar,
    this.imagePath,
  });

  final String id;
  final String? name;
  final String? restaurantName;
  final num? rating;
  final num? priceSar;
  final String? imagePath;

  factory StoreItemModel.fromJson(Map<String, dynamic> json) {
    return StoreItemModel(
      id: json['id']?.toString() ?? '',
      name: (json['categorizedMenuItems']?[0]?['menuItems']?[0]?['name']  ?? '').toString(),
      restaurantName: json['name'] ?? 'Dum Hub',
      rating: (json['rating'] ?? 4.5).toDouble(),
      priceSar: (json['categorizedMenuItems']?[0]?['menuItems']?[0]?['sellingPrice']  ?? 20.0).toDouble(),
      imagePath: json['photos']?[0] ?? "",
    );
  }

  StoreItemEntity toEntity() {
    return StoreItemEntity(
      id: id,
      name: name ?? '',
      restaurantName: restaurantName ?? '',
      rating: rating ?? 0,
      priceSar: priceSar ?? 0,
      imagePath: imagePath,
    );
  }
}
