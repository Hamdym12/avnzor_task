import 'package:avnzor_task/core/constants/app_assets.dart';

/// Enumeration of badge labels shown on menu item cards.
enum BiryaniItemBadge { bestSeller, newItem, chefsPick, serves4, none }

extension BiryaniItemBadgeX on BiryaniItemBadge {
  String get label => switch (this) {
    BiryaniItemBadge.bestSeller => 'Best Seller',
    BiryaniItemBadge.newItem => 'New',
    BiryaniItemBadge.chefsPick => "Chef's Pick",
    BiryaniItemBadge.serves4 => 'Serves 4',
    BiryaniItemBadge.none => '',
  };
}

/// Data model for a single biryani menu item.
/// Static sample data lives here until the domain/networking layer is wired up.
class BiryaniItem {
  const BiryaniItem({
    required this.id,
    required this.name,
    required this.restaurantName,
    required this.rating,
    required this.priceSar,
    this.imagePath = AppAssets.biryaniBackground,
    this.badge = BiryaniItemBadge.none,
  });

  final String id;
  final String name;
  final String restaurantName;
  final double rating;
  final double priceSar;
  final String imagePath;
  final BiryaniItemBadge badge;

  static const List<BiryaniItem> sampleItems = [
    BiryaniItem(
      id: '1',
      name: 'Hyderabadi Chicken Biryani',
      restaurantName: 'Dum Pukht Palace',
      rating: 4.8,
      priceSar: 22,
      badge: BiryaniItemBadge.bestSeller,
    ),
    BiryaniItem(
      id: '2',
      name: 'Dum Mutton Biryani',
      restaurantName: 'Royal Biryani House',
      rating: 4.7,
      priceSar: 28,
    ),
    BiryaniItem(
      id: '3',
      name: 'Kolkata Biryani',
      restaurantName: 'Bengal Bites',
      rating: 4.6,
      priceSar: 20,
      badge: BiryaniItemBadge.newItem,
    ),
    BiryaniItem(
      id: '4',
      name: 'Spicy Chicken Biryani',
      restaurantName: 'Spice Garden',
      rating: 4.5,
      priceSar: 19,
    ),
    BiryaniItem(
      id: '5',
      name: 'Egg Biryani Special',
      restaurantName: 'Egg & Rice Co.',
      rating: 4.4,
      priceSar: 16,
    ),
    BiryaniItem(
      id: '6',
      name: 'Lucknowi Mutton Biryani',
      restaurantName: 'Awadhi Kitchen',
      rating: 4.9,
      priceSar: 32,
      badge: BiryaniItemBadge.chefsPick,
    ),
    BiryaniItem(
      id: '7',
      name: 'Butter Chicken Biryani',
      restaurantName: 'Punjabi Tadka',
      rating: 4.6,
      priceSar: 24,
    ),
    BiryaniItem(
      id: '8',
      name: 'Beef Biryani House',
      restaurantName: 'Grill & Spice',
      rating: 4.5,
      priceSar: 26,
    ),
    BiryaniItem(
      id: '9',
      name: 'Vegetable Dum Biryani',
      restaurantName: 'Green Bowl Express',
      rating: 4.3,
      priceSar: 15,
    ),
    BiryaniItem(
      id: '10',
      name: 'Special Family Biryani',
      restaurantName: 'Family Feast',
      rating: 4.8,
      priceSar: 55,
      badge: BiryaniItemBadge.serves4,
    ),
  ];
}
