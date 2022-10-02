import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//first flutter
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isLikeClicked = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Travell App"),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [Colors.blueGrey, Colors.lightBlue],
            )),
            child: Column(children: <Widget>[
              Flexible(
                  flex: 2,
                  child: Container(
                    margin: const EdgeInsets.all(5),
                    child: const Image(
                      image: NetworkImage(
                          'https://images.unsplash.com/photo-1511884642898-4c92249e20b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                      fit: BoxFit.fitWidth,
                      width: 400,
                    ),
                  )),
              Flexible(
                flex: 1,
                child: Row(
                  children: <Widget>[
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          // child: Image(
                          //   image: const AssetImage("images/ang.jpg"),
                          //   fit: BoxFit.cover,
                          // )
                          child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1604430456280-43f652c497aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                            fit: BoxFit.cover,
                            width: 400,
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1544954617-f5c6b0d16164?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=849&q=80'),
                            fit: BoxFit.cover,
                            width: 400,
                          ),
                        )),
                    Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          child: const Image(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1493962621260-74cc5a3baf89?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
                            fit: BoxFit.cover,
                            width: 400,
                          ),
                        )),
                  ],
                ),
              ),
              const Text(
                "Raja Ampat",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Flexible(
                  flex: 4,
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    padding: const EdgeInsets.all(5),
                    child: const SingleChildScrollView(
                        child: Text(
                      'Kabupaten Raja Ampat sebagai wilayah kepulauan, maka memiliki wilayah daratan yang relatif tidak besar dan pada umumnya topografi daerahnya didominasi oleh wilayah perbukitan yang masih dipenuhi dengan hutan alami. Sedangkan wilayah pesisir pantai memiliki karakteristik yang beragam seperti pantai landai berpasir hitam, pantai landai berpasir putih dengan terumbu karang yang sudah rusak sampai dengan yang masih perawan, pantai dalam dan hutan mangrove. Pulau Waigeo, Pulau Salawati, Pulau Batanta dan Pulau Misool merupakan pulau non-vulkanik yang berbukit-bukit dan sebagian besar masih ditutupi oleh hutan hujan tropis yang cukup lebat. Di Pulau Waigeo terdapat gunung Nokh dengan ketinggian 715 mdpl. Sedangkan pulau-pulau kecil yang tersebar di antara empat kepulauan tersebut ada yang berupa pulau karang dan pulau non vulkanik, pulau-pulau kecil tersebut pada umumnya ditumbuhi oleh tanaman kelapa, semak-belukar dan pohon-pohon kecil. Kemiringan lahan wilayah perencanaan merupakan lahan dengan kemiringan antara 0% sampai dengan di atas 40%. Sebagian wilayah berupa pegunungan daerah lereng-lereng yang curam seperti di Pulau Batanta, Pulau Waigeo, dan Pulau Salawati. Daerah pegunungan ini dapat mencapai 100 - 300 meter di atas permukaan laut. Wilayah dengan ketinggian di bawah 100 meter dpl umumnya terdapat pada Pulau Salawati bagian selatan. Jika dilihat dari fisiografinya, maka Kabupaten Raja Ampat bagian utara, yaitu Pulau Waigeo dan sebagian Pulau Batanta didominasi oleh pegunungan. Sedangkan pada bagian tengah terutama Pulau Salawati cukup luas daerah datarnya. Untuk Pulau Misool walaupun sebagian besar daerahnya pegunungan, tetapi pada bagian tengah pulau terdapat daerah yang datar',
                      textAlign: TextAlign.justify,
                    )),
                  )),
            ]),
          ),

          //button
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.only(right: 10, top: 10),
            child: IconButton(
              icon: const Icon(Icons.favorite),
              color: isLikeClicked ? Colors.white : Colors.red,
              onPressed: () {
                setState(() {
                  isLikeClicked = !isLikeClicked;
                });
              },
            ),
          )
        ],
      ),
    ));
  }
}
