/// Data model for a single biryani category entry.
class BiryaniCategory {
  BiryaniCategory({required this.emoji, required this.label});

  final String emoji;
  final String label;

  static final List<BiryaniCategory> categories = <BiryaniCategory>[
    BiryaniCategory(emoji: '🍗', label: 'Chicken Biryani'),
    BiryaniCategory(emoji: '🍖', label: 'Mutton Biryani'),
    BiryaniCategory(emoji: '🫕', label: 'Hyderabadi Biryani'),
    BiryaniCategory(emoji: '🥩', label: 'Beef Biryani'),
    BiryaniCategory(emoji: '🥚', label: 'Egg Biryani'),
    BiryaniCategory(emoji: '🥦', label: 'Vegetable Biryani'),
    BiryaniCategory(emoji: '🍛', label: 'Kolkata Biryani'),
  ];
}
