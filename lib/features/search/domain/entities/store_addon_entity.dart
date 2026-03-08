import 'package:equatable/equatable.dart';

class StoreAddonEntity extends Equatable {
  final String id;
  final String name;
  final double priceSar;
  final String imagePath;

  const StoreAddonEntity({
    required this.id,
    required this.name,
    required this.priceSar,
    required this.imagePath,
  });

  @override
  List<Object?> get props => [id, name, priceSar, imagePath];
}
