class DoctorsModel {
  final String image;
  final String name;
  final String degree;
  final String specialization;
  final String gender; // 'male' or 'female'
  final double rating;
  final bool isFavorite;

  DoctorsModel({
    required this.image,
    required this.name,
    required this.degree,
    required this.specialization,
    required this.gender,
    required this.rating,
    this.isFavorite = false,
  });
}
