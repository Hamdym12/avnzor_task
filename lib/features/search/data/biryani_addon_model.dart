import 'package:avnzor_task/core/constants/app_assets.dart';

class BiryaniAddon {
  const BiryaniAddon({
    required this.id,
    required this.name,
    required this.priceSar,
    this.imagePath = AppAssets.biryaniBackground,
  });

  final String id;
  final String name;
  final double priceSar;
  final String imagePath;

  static const List<BiryaniAddon> sampleAddons = [
    BiryaniAddon(id: '1', name: 'Raita', priceSar: 4),
    BiryaniAddon(id: '2', name: 'Salad', priceSar: 5),
    BiryaniAddon(id: '3', name: 'Boiled Egg', priceSar: 3),
    BiryaniAddon(id: '4', name: 'Chicken 65', priceSar: 12),
    BiryaniAddon(id: '5', name: 'Kabab', priceSar: 10),
    BiryaniAddon(id: '6', name: 'Soft Drink', priceSar: 4),
    BiryaniAddon(id: '7', name: 'Extra Rice', priceSar: 6),
    BiryaniAddon(id: '8', name: 'Dessert', priceSar: 8),
  ];
}
