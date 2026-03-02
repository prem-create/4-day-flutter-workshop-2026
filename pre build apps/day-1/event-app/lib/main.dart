import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Event App'),
          backgroundColor: Colors.blue.shade500,
        ),
        backgroundColor: Colors.blue.shade300,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset('assets/images/flutter_workshop.png'),
                      SizedBox(height: 20),
                      Text('Flutter Workshop', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 20),
                      Text(
                        'A hands-on Flutter workshop where participants build real apps while learning core concepts like widgets, state management, and navigation. Perfect for beginners who want practical experience in creating cross-platform mobile apps.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '29/22/22 to 22/33/44',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTT8GiNtQR6O_QqxjH7fmQCiQqD21DlBlP-iQ&s',
                      ),
                      SizedBox(height: 20),
                      Text('ReadtJS Workshop', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 20),
                      Text(
                        'A practical React.js workshop focused on building dynamic and responsive web applications using components, hooks, and state management. Ideal for beginners who want to understand modern frontend development by creating real projects.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '29/22/22 to 22/33/44',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network('https://picsum.photos/400/200?1'),
                      SizedBox(height: 20),
                      Text('ReactJS Workshop', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 20),
                      Text(
                        'A practical React.js workshop focused on building dynamic and responsive web applications using components, hooks, and state management.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '29/22/22 to 22/33/44',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network('https://picsum.photos/400/200?2'),
                      SizedBox(height: 20),
                      Text('Flutter Workshop', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 20),
                      Text(
                        'A hands-on Flutter workshop where participants build real apps while learning core concepts like widgets and navigation.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '10/11/23 to 12/11/23',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network('https://picsum.photos/400/200?3'),
                      SizedBox(height: 20),
                      Text('Python Bootcamp', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 20),
                      Text(
                        'An intensive Python bootcamp covering basics, loops, functions, and mini projects for beginners.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '01/01/24 to 05/01/24',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network('https://picsum.photos/400/200?4'),
                      SizedBox(height: 20),
                      Text('AI & ML Seminar', style: TextStyle(fontSize: 30)),
                      SizedBox(height: 20),
                      Text(
                        'An introductory seminar on Artificial Intelligence and Machine Learning concepts with real-life applications.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '15/02/24 to 16/02/24',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network('https://picsum.photos/400/200?5'),
                      SizedBox(height: 20),
                      Text(
                        'Web Development Crash Course',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'A beginner-friendly crash course covering HTML, CSS, and JavaScript to build responsive websites.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '20/03/24 to 25/03/24',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),

                Divider(),
                Container(
                  color: Colors.blue.shade200,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.network('https://picsum.photos/400/200?6'),
                      SizedBox(height: 20),
                      Text(
                        'Cybersecurity Basics',
                        style: TextStyle(fontSize: 30),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'An awareness session on cybersecurity fundamentals and protecting digital assets.',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '05/04/24 to 06/04/24',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
