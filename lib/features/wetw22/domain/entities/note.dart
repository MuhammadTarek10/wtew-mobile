import 'package:equatable/equatable.dart';

class Note extends Equatable {
  final String id;
  final String title;
  final String description;

  const Note({
    required this.id,
    required this.title,
    required this.description,
  });

  @override
  List<Object> get props => [
        id,
        title,
        description,
      ];
}
