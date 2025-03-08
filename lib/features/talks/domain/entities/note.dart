import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final String id;
  final String title;
  final List<String> description;
  final String imagePath;

  const Note({
    required this.id,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  List<Object> get props => [
        id,
        title,
        description,
        imagePath,
      ];
}
