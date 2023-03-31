import 'package:quiz_app/models/questions_model.dart';

class QuizData {
  int index = 0;
  List<QuestionModel> suroolorJooptor = [
    QuestionModel(
      suroolor: 'Кыргыз тилинде 39 тамга барбы?',
      jooptor: false,
    ),
    QuestionModel(
      suroolor: 'Кыргыз тил илиминин атасы Касым Тыныстановбу?',
      jooptor: true,
    ),
    QuestionModel(
      suroolor: 'Кыргыз тилинде чыккан алгачкы гезит "Эркин тообу?',
      jooptor: true,
    ),
    QuestionModel(
      suroolor: 'Кыргыз тили флективдүү тилби?',
      jooptor: false,
    ),
  ];

  String? suroonuAlypKel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].suroolor;
    } else {
      return "";
    }
  }

  bool? jooptuAlypKel() {
    if (index < suroolorJooptor.length) {
      return suroolorJooptor[index].jooptor;
    } else {
      return false;
    }

    // ignore: dead_code
  }

  void otkoz() {
    index++;
  }

  void kairabashta() {
    index = 0;
  }
}

final QuizData quizData = QuizData();
