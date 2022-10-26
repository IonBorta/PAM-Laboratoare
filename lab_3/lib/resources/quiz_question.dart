class QuizQuestion{
  final String questionText;
  final List<QuizAnswer> answerList;
  late int score = 0;

  QuizQuestion(this.questionText, this.answerList);

}

class QuizAnswer{
  final String answerText;
  final bool isCorrect;

  QuizAnswer(this.answerText,this.isCorrect);

}

List<QuizQuestion> getQuestion(){
  List<QuizQuestion> list = [];


  list.add(QuizQuestion(
      "In its most basic definition, \"x\" in algebra stands for what?",
    [
      QuizAnswer("a decimal", false),
      QuizAnswer("a rational number", false),
      QuizAnswer("a positive number", false),
      QuizAnswer("an unknown number", true)
    ]
      )
  );
  list.add(QuizQuestion(
      "Eighty percent expressed as a fraction is ...",
      [
        QuizAnswer("1/8", false),
        QuizAnswer("2/4", false),
        QuizAnswer("4/5", true),
        QuizAnswer("10/18", false)
      ]
  )
  );
  list.add(QuizQuestion(
      "The interior angles of a triangle always measure up to ____ degrees.",
      [
        QuizAnswer("45", false),
        QuizAnswer("90", false),
        QuizAnswer("180", true),
        QuizAnswer("270", false)
      ]
  )
  );
  list.add(QuizQuestion(
      "If one interior angle of a triangle is 75, what is the sum of the other two angles?",
      [
        QuizAnswer("90", false),
        QuizAnswer("105", true),
        QuizAnswer("125", false),
        QuizAnswer("170", false)
      ]
  )
  );
  list.add(QuizQuestion(
      "What number does the Greek letter \"pi\" represent?",
      [
        QuizAnswer("1", false),
        QuizAnswer("3.14", true),
        QuizAnswer("7.28", false),
        QuizAnswer("zero", false)
      ]
  )
  );
  //adding questions and answers
/*  list.add(QuizQuestion(
    "Who is the owner of the Flutter?",
    [
      QuizAnswer("Nokia", false),
      QuizAnswer("Samsung", false),
      QuizAnswer("Google", true),
      QuizAnswer("Apple", false)
    ]
  ));

  list.add(QuizQuestion(
      "Who owns Iphone?",
      [
        QuizAnswer("Apple", true),
        QuizAnswer("Microsoft", false),
        QuizAnswer("Google", false),
        QuizAnswer("Nokia", false)
      ]
  ));

  list.add(QuizQuestion(
      "Youtube is  _______ platform?",
      [
        QuizAnswer("Music sharing", false),
        QuizAnswer("Video sharing", false),
        QuizAnswer("Live streaming", false),
        QuizAnswer("All of the above", true)
      ]
  ));

  list.add(QuizQuestion(
      "Which programing language uses Flutter?",
      [
        QuizAnswer("C", false),
        QuizAnswer("Java", false),
        QuizAnswer("C#", false),
        QuizAnswer("Dart", true)
      ]
  ));*/

  return list;
}
