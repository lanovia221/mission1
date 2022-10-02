part of 'pages.dart';

// ignore: camel_case_types
class week2 extends StatefulWidget {
  const week2({super.key});

  @override
  State<week2> createState() => _week2State();
}

// ignore: camel_case_types
class _week2State extends State<week2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Week 3'),
          centerTitle: true,
        ),
        // ignore: sized_box_for_whitespace
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(children: [
            Flexible(
                flex: 3,
                child: Container(
                  color: Colors.black54,
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: Colors.blueGrey,
                )),
            Flexible(
                flex: 2,
                child: Container(
                  color: const Color.fromARGB(255, 196, 25, 25),
                ))
          ]),
        ));
  }
}
