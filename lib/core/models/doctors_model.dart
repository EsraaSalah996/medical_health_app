import 'package:medical_health_app/core/image/app_image.dart';

class DoctorsModel {
  final String image;
  final String name;
  final String? degree;
  final String specialization;
  final String? gender; // 'male' or 'female'
  final double? rating;
  final bool isFavorite;

  DoctorsModel({
    required this.image,
    required this.name,
    this.degree,
    required this.specialization,
    this.gender,
    this.rating,
    this.isFavorite = false,
  });
}

List<DoctorsModel> doctors = [
  DoctorsModel(
    image: AppImage.doctor1,
    name: 'Dr. Alexander Bennett, Ph.D.',
    specialization: 'Dermato-Genetics',
  ),
  DoctorsModel(
    image: AppImage.doctor2,
    name: 'Dr. Michael Davidson, M.D.',
    specialization: 'Dermato-Genetics',
  ),
  DoctorsModel(
    image: AppImage.doctor5,
    name: 'Dr. Olivia Turner, M.D.',
    specialization: 'Dermato-Genetics',
  ),
  DoctorsModel(
    image: AppImage.doctor8,
    name: 'Dr. Sophia Martinez, Ph.D.',
    specialization: 'Dermato-Genetics',
  ),
  DoctorsModel(
    image: AppImage.doctor8,
    name: 'Dr. Alexander Bennett, Ph.D.',
    specialization: 'Dermato-Genetics',
  ),
  DoctorsModel(
    image: AppImage.doctor8,
    name: 'Dr. Alexander Bennett, Ph.D.',
    specialization: 'Dermato-Genetics',
  ),
  DoctorsModel(
    image: AppImage.doctor8,
    name: 'Dr. Alexander Bennett, Ph.D.',
    specialization: 'Dermato-Genetics',
  ),
  DoctorsModel(
    image: AppImage.doctor5,
    name: 'Dr. Alexander Bennett, Ph.D.',
    specialization: 'Dermato-Genetics',
  ),
];
