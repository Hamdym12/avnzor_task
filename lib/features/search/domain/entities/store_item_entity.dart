import 'package:equatable/equatable.dart';

class StoreItemEntity extends Equatable {
  final String id;
  final String? name;
  final String? restaurantName;
  final num? rating;
  final num? priceSar;
  final String? imagePath;

  const StoreItemEntity({
    required this.id,
     this.name,
     this.restaurantName,
     this.rating,
     this.priceSar,
     this.imagePath,
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
