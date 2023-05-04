class Question {
  final String questionText;
  final List<Answer> answerList;

  Question(this.questionText, this.answerList);
}

class Answer {
  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);
}

List<Question> getQuestions() {
  List<Question> list = [];

  list.add(Question(
    "How's your Day?",
    [
      Answer("Good 😀", true),
      Answer("Okay 🙂", false),
      Answer("Not Good 🙁", false),
    ],
  ));

  list.add(Question(
    "What brings you in today?",
    [
      Answer("Can't manage myself form past one week 😥", true),
      Answer("Stress 😧", false),
      Answer("Epilapsy", false),
    ],
  ));

  list.add(Question(
    "When did you first notice your symptoms?",
    [
      Answer("A week before", true),
      Answer("from past month", false),
      Answer("Many years ago", false),
    ],
  ));

  list.add(Question(
    "Have you ever been diagnosed with a mental disorder before?",
    [
      Answer("No", true),
      Answer("Not Sure", false),
      Answer("Yes", false),
    ],
  ));

  list.add(Question(
    "Have you ever experienced a terrible occurrence that has impacted you significantly?",
    [
      Answer("Not often", true),
      Answer("from some past time", false),
      Answer("when pressure is too high", false),
    ],
  ));

  list.add(Question(
    "Do you ever feel that you've been affected by feelings of edginess, anxiety, or nerves?",
    [
      Answer("No", true),
      Answer("sometime", false),
      Answer("whenever i had family problem", false),
    ],
  ));

  list.add(Question(
    "Have you experienced a week or longer of lower-than-usual interest in activities that you usually enjoy? Examples might include work, exercise, or hobbies.",
    [
      Answer("no", true),
      Answer("yes", false),
    ],
  ));

  list.add(Question(
    " Have you ever experienced an 'attack' of fear, anxiety, or panic?",
    [
      Answer("when i didn't get much sleep for almost a week", true),
      Answer("sometime coz of horrible dreams", false),
      Answer("no", false),
    ],
  ));

  list.add(Question(
    "Tell me about how confident you have been feeling in your capabilities recently.",
    [
      Answer("getting scared to perform", true),
      Answer("less", false),
      Answer("fully confident", false),
    ],
  ));

  list.add(Question(
    "Can you tell me about your hopes and dreams for the future?",
    [
      Answer("just earn to have bread and water", true),
      Answer("Want to build an empire on my own", false),
    ],
  ));

  list.add(Question(
    "How many close friends would you say you have?",
    [
      Answer("none", true),
      Answer("1", false),
      Answer("2", false),
    ],
  ));

  list.add(Question(
    "During the past 4 weeks, have you had any problems with your work or daily life due to your physical health?",
    [
      Answer("Excellent", true),
      Answer("Normal", false),
      Answer("Not Good", false),
    ],
  ));

  list.add(Question(
    "Have you felt particularly low or down for more than 2 weeks in a row?",
    [
      Answer("Not at all", true),
      Answer("Not so often", false),
      Answer("Very often", false),
    ],
  ));

  list.add(Question(
    "Are you currently taking any medication?",
    [
      Answer("Yes", true),
      Answer("No", false),
    ],
  ));
  list.add(Question(
    "Have you been experiencing any physical symptoms, such as headaches or stomachaches?",
    [
      Answer("No", true),
      Answer("Yes", false),
    ],
  ));
  list.add(Question(
    "Have you been using any coping mechanisms to deal with difficult emotions or situations?",
    [
      Answer("No", true),
      Answer("Yes", false),
    ],
  ));
  list.add(Question(
    "Have you been having any difficulty concentrating or staying focused?",
    [
      Answer("No", true),
      Answer("Yes", false),
    ],
  ));
  list.add(Question(
    "Have you been having any negative thoughts or feelings about yourself?",
    [
      Answer("No", true),
      Answer("Yes", false),
    ],
  ));
  list.add(Question(
    "Have you been isolating yourself from social activities or interactions?",
    [
      Answer("No", true),
      Answer("Yes", false),
    ],
  ));
  list.add(Question(
    "Have you been able to maintain a healthy work-life balance?",
    [
      Answer("Yes", true),
      Answer("No", false),
    ],
  ));
  list.add(Question(
    "Have you been feeling irritable or easily agitated?",
    [
      Answer("No", true),
      Answer("Yes", false),
    ],
  ));
  return list;
}
