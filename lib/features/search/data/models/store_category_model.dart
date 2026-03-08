/// Data model for a single store category entry.
class StoreCategoryModel {
  StoreCategoryModel({required this.emoji, required this.label});

  final String emoji;
  final String label;

  static final List<StoreCategoryModel> categories = <StoreCategoryModel>[
    StoreCategoryModel(emoji: '🍗', label: 'Chicken Biryani'),
    StoreCategoryModel(emoji: '🍖', label: 'Mutton Biryani'),
    StoreCategoryModel(emoji: '🫕', label: 'Hyderabadi Biryani'),
    StoreCategoryModel(emoji: '🥩', label: 'Beef Biryani'),
    StoreCategoryModel(emoji: '🥚', label: 'Egg Biryani'),
    StoreCategoryModel(emoji: '🥦', label: 'Vegetable Biryani'),
    StoreCategoryModel(emoji: '🍛', label: 'Kolkata Biryani'),
  ];
}
