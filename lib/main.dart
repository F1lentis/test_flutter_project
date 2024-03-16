import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Какая-то социальная сеть'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _minus() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,

        title: Text(widget.title),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.all(20.5)),
                Image.asset(
                    'assets/images/photo.jpg', width: 320, height: 280
                ),
                const Text('Леонид Лебедев'),
                Row(
                  children: [
                    Icon(Icons.mail_outline_outlined, size: 25,),
                    Padding(padding: EdgeInsets.only(left: 2.5)),
                    const Text('lebedev.la@dvfu.ru'),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: const Text('Кнопкощелкатель'),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    '$_counter',
                    style: Theme
                        .of(context)
                        .textTheme
                        .headlineMedium,
                  ),
                ),
                TextButton(onPressed: _incrementCounter, child: const Text('Жмяк')),
                TextButton(onPressed: _minus, child: const Text('Жмяк в другую сторону')),
              ],
            ),
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 40.5)),
                const Text('Место работы: ДВФУ'),
                const Text('Место учебы: ДВФУ'),
                const Text('Возраст: 33 годика'),
                const Text('Увлечения: всякие'),
                Padding(padding: EdgeInsets.only(top: 40.5, bottom: 180.5)),

                CircleAvatar(
                  backgroundImage: NetworkImage('https://wp-s.ru/wallpapers/5/18/287184122007421/oskalenyj-zelenoglazyj-kot-lezhit-v-trave.jpg'),
                  radius: 50.5,
                ),
                const Text('Хотел еще аватарки таких котанов'),
                const Text('сделать, чтобы менялись по нажатию'),
                const Text('кнопки, но чет не получилось'),
                const Text('...и текст с автопереносом тоже..'),
                const Text('не получилось))'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}