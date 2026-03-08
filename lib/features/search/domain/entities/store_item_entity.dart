import 'package:equatable/equatable.dart';

class StoreItemEntity extends Equatable {
  final String id;
  final String name;
  final String restaurantName;
  final double rating;
  final double priceSar;
  final String imagePath;

  const StoreItemEntity({
    required this.id,
    required this.name,
    required this.restaurantName,
    required this.rating,
    required this.priceSar,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [
    id,
    name,
    restaurantName,
    rating,
    priceSar,
    imagePath,
  ];
}
