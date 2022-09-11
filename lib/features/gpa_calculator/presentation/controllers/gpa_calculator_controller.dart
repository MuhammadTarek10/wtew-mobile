import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';

class GPACalculatorController {
  final GPACalculatorBloc bloc;

  const GPACalculatorController({required this.bloc});

  void addSemester(Semester semester) {
    bloc.add(AddSemesterEvent(semester: semester));
  }

  void editSemester(Semester semester) {
    bloc.add(EditSemesterEvent(semester: semester));
  }

  void deleteSemester(Semester semester) {
    bloc.add(DeleteSemesterEvent(semester: semester));
  }

  void getSemesters() {
    bloc.add(GetSemestersEvent());
  }

  void dispose() {
    bloc.close();
  }
}
