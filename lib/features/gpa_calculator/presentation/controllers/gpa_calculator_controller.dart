import 'package:wtew22/core/injector.dart';
import 'package:wtew22/features/gpa_calculator/data/datasources/local_data_source.dart';
import 'package:wtew22/features/gpa_calculator/domain/entities/semester.dart';
import 'package:wtew22/features/gpa_calculator/presentation/bloc/gpa_calculator_bloc.dart';
import 'package:wtew22/features/gpa_calculator/presentation/controllers/helper.dart';
import 'package:wtew22/features/gpa_calculator/presentation/widgets/subject_inputs.dart';

class GPACalculatorController {
  final GPACalculatorBloc bloc;
  GPACalculatorController({required this.bloc});

  LocalDataSource localDataSource = instance<LocalDataSourceImpl>();

  Semester? semester;

  Future<bool> isSemesterRight(List<SubjectInputData> data) async {
    try {
      String id;
      int term = 1;

      final semesters = await localDataSource.getSemesters();
      if (semesters.isNotEmpty) {
        semesters.sort((a, b) => int.parse(a.id).compareTo(int.parse(b.id)));
        id = ((int.parse(semesters.last.id)) + 1).toString();
      } else {
        id = "1";
      }

      semester = buildSemester(id, term, data);
      return true;
    } catch (error) {
      return false;
    }
  }

  void addSemester() {
    bloc.add(AddSemesterEvent(semester: semester!));
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

  void close() {
    bloc.close();
  }
}
