// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_proje/detay.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Moda App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white60),
        useMaterial3: true,
      ),
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({super.key});

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBarim(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.camera_alt),
            onPressed: () {},
          )
        ],
        title: const Text(
          'Moda Uygulaması',
          style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: ListViewim(context),
    );
  }

  ListView ListViewim(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 10),
      children: [
        Container(
          height: 140,
          width: double.infinity,
          child: ListView(
            padding: const EdgeInsets.all(10),
            scrollDirection: Axis.horizontal,
            children: [
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model1.jpeg', 'assets/chanellogo.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model2.jpeg', 'assets/louisvuitton.jpg'),
              const SizedBox(
                width: 30,
              ),
              listeElemani('assets/model3.jpeg', 'assets/chloelogo.png'),
              const SizedBox(
                width: 30,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Material(
            borderRadius: BorderRadius.circular(16),
            elevation: 4,
            child: Container(
              height: 485,
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: AssetImage('assets/model1.jpeg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 200,
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Daisy',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '34 mins ago',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 54,
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                        size: 22,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'This official website features a ribbed knit zipper jacket that is'
                    'modern and stylish. It looks very temparament and is recommend to friends',
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        color: Colors.grey),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Detay(imgPath: 'assets/modelgrid1.jpeg')));
                        },
                        child: Hero(
                          tag: 'assets/modelgrid1.jpeg',
                          child: Container(
                            height: 200,
                            width: (MediaQuery.of(context).size.width - 50) / 2,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                    image: AssetImage('assets/modelgrid1.jpeg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid2.jpeg',
                                      )));
                            },
                            child: Hero(
                              tag: 'assets/modelgrid2.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid2.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Detay(
                                        imgPath: 'assets/modelgrid3.jpeg',
                                      )));
                            },
                            child: Hero(
                              tag: 'assets/modelgrid3.jpeg',
                              child: Container(
                                height: 95,
                                width:
                                    (MediaQuery.of(context).size.width - 100) /
                                        2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/modelgrid3.jpeg'),
                                        fit: BoxFit.cover)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Container(
                      height: 25,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.2)),
                      child: Center(
                        child: Text(
                          '# Louis Vuitton',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 25,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.brown.withOpacity(0.2)),
                      child: Center(
                        child: Text(
                          '# Chole',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 10,
                              color: Colors.brown),
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Divider(),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.reply,
                        color: Colors.brown.withOpacity(0.2),
                        size: 30,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '1.7k',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Colors.brown.withOpacity(0.4),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.brown.withOpacity(0.2),
                        size: 20,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '325',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          color: Colors.brown.withOpacity(0.4),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width - 205,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 25,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '2.3k',
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                color: Colors.brown.withOpacity(0.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  TabBar TabBarim() {
    return TabBar(controller: tabController, tabs: const [
      Tab(
        icon: Icon(
          Icons.more,
          color: Colors.grey,
          size: 22,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.play_arrow,
          color: Colors.grey,
          size: 22,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.navigation,
          color: Colors.grey,
          size: 22,
        ),
      ),
      Tab(
        icon: Icon(
          Icons.supervised_user_circle,
          color: Colors.grey,
          size: 22,
        ),
      )
    ]);
  }

  listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(logoPath), fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 30,
          width: 75,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown.shade400,
          ),
          child: const Center(
            child: Text(
              'Follow',
              style: TextStyle(
                  fontFamily: 'Montserrat', fontSize: 14, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
