import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:quize/FruitDataModel.dart';
import 'package:quize/FruitDetail.dart';

class Exercise extends StatefulWidget {
  const Exercise({super.key});

  @override
  State<Exercise> createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {
  static List<String> fruitname = [
    'Swimming',
    'Cycling',
    'Yoga',
    'Aerobics',
    'Boxing',
    'Running',
    'tai chi',
    'Sports',
    'Hiking',
    'Dancing',
    'Rowing',
    'Martial Arts'
  ];
  static List<String> fruitdesc = [
    '''Swimming is an excellent form of exercise that can provide numerous mental health benefits. Here are some suggestions for incorporating swimming into your routine for improved mental health:

Set achievable goals: Start with small and achievable goals for swimming, such as swimming for a specific duration or distance. Setting goals and achieving them can boost your self-esteem and give you a sense of accomplishment.

Practice mindfulness: Focus on your breathing and the sensation of the water against your skin while you swim. This can help you clear your mind and reduce stress and anxiety.

Connect with others: Join a swim group or find a friend to swim with. Connecting with others while swimming can help you feel more supported and reduce feelings of loneliness and isolation.''',
    '''Cycling is a great form of exercise that can improve your mental health in numerous ways. Here are some suggestions for incorporating cycling into your routine for improved mental well-being:

Start slow: If you're new to cycling, start slow and gradually increase your intensity and duration. This can help you avoid burnout and injury while building up your endurance.

Cycle outdoors: Cycling outdoors can expose you to natural sunlight and fresh air, which can help improve your mood and reduce feelings of depression and anxiety.

Practice mindfulness: Focus on your breathing and the sensation of your body moving while you cycle. This can help you clear your mind and reduce stress and anxiety.

Connect with others: Join a cycling group or find a friend to cycle with. Connecting with others while cycling can help you feel more supported and reduce feelings of loneliness and isolation.

Make it a routine: Incorporate cycling into your weekly routine to create a sense of structure and consistency. This can help you feel more in control and reduce feelings of overwhelm or chaos.''',
    '''Yoga is an excellent form of exercise that can provide numerous mental health benefits. Here are some suggestions for incorporating yoga into your routine for improved mental well-being:

Find a comfortable space: Find a quiet and comfortable space to practice yoga where you won't be disturbed. This can help you feel more relaxed and focused during your practice.

Set an intention: Before starting your yoga practice, set an intention or a goal for what you want to achieve mentally or emotionally. This can help you focus your mind and create a positive mindset.

Focus on your breath: Focus on your breath while practicing yoga. This can help you clear your mind and reduce stress and anxiety.

Choose the right type of yoga: There are many different types of yoga, each with its own focus and benefits. Choose a type of yoga that aligns with your mental health needs, such as restorative yoga for stress relief or power yoga for a mood boost.

Practice regularly: Incorporate yoga into your weekly routine to create a sense of structure and consistency. This can help you feel more in control and reduce feelings of overwhelm or chaos.''',
    '''Aerobics is a great form of exercise that can have numerous benefits for your mental health. Here are some suggestions for incorporating aerobics into your routine for improved mental well-being:

Start with a warm-up: Begin your aerobics routine with a warm-up to prepare your body for exercise and help you ease into the workout.

Choose music that motivates you: Play music that energizes and motivates you during your aerobics routine. Listening to music can improve your mood and make your workout more enjoyable.

''',
    '''Boxing is a great form of exercise that can provide numerous mental health benefits. Here are some suggestions for incorporating boxing into your routine for improved mental well-being:

Find a reputable boxing gym: Look for a gym with qualified trainers who prioritize safety and technique. A good gym will provide you with the necessary equipment and support to help you get the most out of your boxing workouts.

Focus on technique: Take the time to learn proper technique and form. This can help you avoid injury and improve your overall boxing skills, which can boost your confidence and self-esteem.

Practice mindfulness: Focus on your breathing and the sensation of your body moving while you box. This can help you clear your mind and reduce stress and anxiety.

Release pent-up emotions: Boxing can be a great way to release pent-up emotions and stress. Use your workouts to channel your energy and emotions in a healthy way.

Set achievable goals: Set achievable goals for your boxing workouts, such as learning a new technique or completing a certain number of rounds. Setting goals and achieving them can boost your self-esteem and give you a sense of accomplishment.''',
    '''Running is a popular form of exercise that can benefit your mental health in numerous ways. Here are some suggestions for incorporating running into your routine for improved mental well-being:

Start slow: If you're new to running, start with a shorter distance or duration and gradually increase as you build up your endurance. This can help you avoid burnout and injury.

Run outdoors: Running outdoors can expose you to natural sunlight and fresh air, which can help improve your mood and reduce feelings of depression and anxiety.

Practice mindfulness: Focus on your breathing and the sensation of your feet hitting the ground while you run. This can help you clear your mind and reduce stress and anxiety.

Connect with others: Join a running group or find a friend to run with. Connecting with others while running can help you feel more supported and reduce feelings of loneliness and isolation.
''',
    '''Tai Chi is a gentle and low-impact form of exercise that can provide numerous mental health benefits. Here are some suggestions for incorporating Tai Chi into your routine for improved mental well-being:

Attend a class: Join a Tai Chi class in your community or find an instructor online. Learning Tai Chi from a qualified teacher can ensure that you're using the correct form and technique, which can help you get the most out of your practice.

Practice mindfulness: Focus on your breathing and the sensation of your body moving while you practice Tai Chi. This can help you clear your mind and reduce stress and anxiety.

Connect with others: Join a Tai Chi group or find a friend to practice with. Connecting with others while practicing Tai Chi can help you feel more supported and reduce feelings of loneliness and isolation.

Create a relaxing environment: Find a quiet and peaceful space to practice Tai Chi. You may want to play soft music or light candles to create a calming atmosphere.


''',
    '''Engaging in sports is a great way to improve your mental health and well-being. Here are some sports suggestions that you can try:

Yoga: Yoga is a form of physical activity that involves stretching, breathing, and relaxation techniques. It can help reduce stress, anxiety, and depression while improving flexibility, balance, and strength.

Running: Running is a form of aerobic exercise that releases endorphins, which are natural mood-boosters. It can also improve cognitive function, memory, and self-esteem.

Tennis: Tennis is a sport that requires coordination, focus, and strategic thinking. It can improve cardiovascular health, coordination, and hand-eye coordination, while reducing stress and anxiety.

Basketball: Basketball is a high-intensity team sport that can improve cardiovascular fitness, agility, and coordination. Playing basketball can also promote social interaction and build teamwork skills.

Swimming: Swimming is a low-impact sport that can improve cardiovascular health, flexibility, and strength. It can also promote relaxation and reduce symptoms of depression and anxiety.''',
    '''Hiking''',
    'Dancing',
    'Rowing',
    'Martial Arts'
  ];
  static List url = [
    'https://sportsmatik.com/uploads/matik-sports-corner/matik-know-how/swimming1_1562582117.jpg',
    'https://assets.gqindia.com/photos/61aefc5410327c06168d4441/16:9/pass/top-image%20(12).jpg',
    'https://www.lalpathlabs.com/blog/wp-content/uploads/2018/09/Yoga-Or-Meditation.jpg',
    'https://img.freepik.com/free-vector/fitness-aerobic-strength-body-shaping-exercises-4-flat-icons_1284-5379.jpg?w=2000',
    'https://static.dw.com/image/59131461_605.jpg',
    'https://www.news-medical.net/images/Article_Images/ImageForArticle_22980_16600577310868068.jpg',
    'https://img.mensxp.com/media/content/2022/Nov/An-Asian-man-performing-Tai-chi_6374d13eb5202.jpeg',
    'https://img.freepik.com/free-photo/sports-tools_53876-138077.jpg?w=2000',
    'https://images.unsplash.com/photo-1551632811-561732d1e306?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGlraW5nfGVufDB8fDB8fA%3D%3D&w=1000&q=80',
    'https://img.freepik.com/free-vector/hand-drawn-people-dancing-pack_23-2148118398.jpg?w=2000',
    'https://usrowing.org/images/2019/9/17/Sweep_vs_Sculling.jpg',
    'https://www.japan-academy.in/blog/wp-content/uploads/2022/06/Martial-Arts-Types-and-Forms.jpg'
  ];

  final List<FruitDataModel> Fruitdata = List.generate(
      fruitname.length,
      (index) => FruitDataModel(
          '${fruitname[index]}', '${url[index]}', '${fruitdesc[index]}'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Exercise"),
        ),
        backgroundColor: Color.fromARGB(255, 121, 68, 219),
        body: ListView.builder(
            itemCount: Fruitdata.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  title: Text(Fruitdata[index].name),
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Image.network(Fruitdata[index].ImageUrl),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => FruitDetail(
                              fruitDataModel: Fruitdata[index],
                            )));
                  },
                ),
              );
            }));
  }
}
