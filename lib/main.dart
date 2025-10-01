import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Michelle Dorani Shiba - 2341720113';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const BasicLayoutDemo(),
      ),
    );
  }
}

class BasicLayoutDemo extends StatelessWidget {
  const BasicLayoutDemo({super.key});

  @override
  Widget build(BuildContext context) {
    // Judul
    const titleText = Text(
      'Pavlova',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontFamily: 'Roboto',
        fontSize: 32,
      ),
    );

    // Subjudul
    const subTitle = Text(
      'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova.',
      style: TextStyle(
        fontSize: 16,
        fontFamily: 'Roboto',
      ),
    );

    // Bintang rating
    final stars = Row(
      mainAxisSize: MainAxisSize.min,
      children: const [
        Icon(Icons.star, color: Colors.green),
        Icon(Icons.star, color: Colors.green),
        Icon(Icons.star, color: Colors.green),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );

    final ratings = Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          stars,
          const Text(
            '170 Reviews',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontFamily: 'Roboto',
              letterSpacing: 0.5,
              fontSize: 20,
            ),
          ),
        ],
      ),
    );

    // Bar ikon dengan teks
    const descTextStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 18,
      height: 2,
    );

    final iconList = DefaultTextStyle.merge(
      style: descTextStyle,
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: const [
                Icon(Icons.kitchen, color: Colors.green),
                Text('PREP:'),
                Text('25 min'),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.timer, color: Colors.green),
                Text('COOK:'),
                Text('1 hr'),
              ],
            ),
            Column(
              children: const [
                Icon(Icons.restaurant, color: Colors.green),
                Text('FEEDS:'),
                Text('4-6'),
              ],
            ),
          ],
        ),
      ),
    );

    // Kolom kiri berisi teks
    final leftColumn = Container(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [titleText, subTitle, ratings, iconList],
      ),
    );

    // Gambar utama
    final mainImage = Image.asset(
      'images/Pavlova.jpeg',
      fit: BoxFit.cover,
    );

    // Susun dalam Row (kolom kiri + gambar)
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 30),
        height: 600,
        child: Card(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 440, child: leftColumn),
              Expanded(child: mainImage),
            ],
          ),
        ),
      ),
    );
  }
}
