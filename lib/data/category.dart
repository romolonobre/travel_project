class Category {
  var iconPath;
  final String category;

  Category({
    required this.iconPath,
    required this.category,
  });
}

List<Category> categorieslist = [
  Category(
    iconPath: 'Assets/icons/location.svg',
    category: 'Countries',
  ),
  Category(
    iconPath: 'Assets/icons/camera.svg',
    category: 'Sights',
  ),
  Category(
    iconPath: 'Assets/icons/train.svg',
    category: 'Tours',
  ),
  Category(
    iconPath: 'Assets/icons/location.svg',
    category: 'Countries',
  ),
];
