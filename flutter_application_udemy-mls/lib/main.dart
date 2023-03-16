import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(accentColor: Colors.purple, primaryColor: Colors.teal),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Başlık"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => debugPrint("tıklandı"),
            splashColor: Colors.black,
            child: Icon(Icons.punch_clock)),
        body: Container(
            color: const Color.fromARGB(255, 240, 107, 98),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [DartRowunuOlustur(), Expanded(child: coloumnOlusur())],
            )),
      ),
    );
  }

  @override
  Row DartRowunuOlustur() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ColorfullContainer(
          text: 'D',
          myColor: Color.fromARGB(255, 237, 203, 159),
        ),
        ColorfullContainer(
          text: 'A',
          myColor: Color.fromARGB(255, 246, 184, 103),
        ),
        ColorfullContainer(
          text: 'R',
          myColor: Color.fromARGB(255, 246, 177, 86),
        ),
        ColorfullContainer(
          text: 'T',
          myColor: Color.fromARGB(255, 248, 153, 29),
        ),
      ],
    );
  }

  Column coloumnOlusur() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        ColorfullContainer(
          text: 'E',
          myColor: Color.fromARGB(255, 246, 184, 103),
        ),
        ColorfullContainer(
          text: 'R',
          myColor: Color.fromARGB(255, 246, 177, 86),
        ),
        ColorfullContainer(
          text: 'S',
          myColor: Color.fromARGB(255, 248, 153, 29),
        ),
        ColorfullContainer(
          text: 'L',
          myColor: Color.fromARGB(255, 240, 145, 20),
        ),
        ColorfullContainer(
          text: 'E',
          myColor: Color.fromARGB(255, 248, 142, 5),
        ),
        ColorfullContainer(
          text: 'R',
          myColor: Color.fromARGB(255, 245, 140, 1),
        ),
        ColorfullContainer(
          isLast: true,
          text: 'İ',
          myColor: Color.fromARGB(255, 248, 153, 29),
        ),
      ],
    );
  }
}

class ColorfullContainer extends StatelessWidget {
  final String text;
  final Color myColor;
  final bool isLast;

  const ColorfullContainer({
    Key? key,
    required this.text,
    required this.myColor,
    this.isLast = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: isLast ? EdgeInsets.only(bottom: 0) : EdgeInsets.only(bottom: 20),
      alignment: AlignmentDirectional.center,
      child: Text(text),
      //margin: EdgeInsets.only(top: 15),
      color: myColor,
      width: 60,
      height: 60,
    );
  }
}
