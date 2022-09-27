import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
        height: double.maxFinite,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
            colors: <Color>[
              Color(0xff64b3f4),
              Color(0xffc2e59c),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        padding: EdgeInsets.only(top: 40, left: 10, right: 10, bottom: 0),
        child: Column(
          // alignment: Alignment.centerLeft,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Header(),
            StatList(),
            Footer(),
          ],
        ));
  }
}

class Footer extends StatelessWidget {
  const Footer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
            height: 90,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, .6),
                borderRadius: BorderRadius.circular(25)),
            child: Text(
              "sdc",
              textDirection: TextDirection.ltr,
            )),
      ),
    );
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text(
            "Your Finance Today",
            textDirection: TextDirection.ltr,
            style: TextStyle(
                fontSize: 48,
                fontFamily: "Nunito",
                fontWeight: FontWeight.w700),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(
              "September, 15",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                fontSize: 32,
                fontFamily: "Nunito",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StatList extends StatefulWidget {
  // const StatList({ Key? key }) : super(key: key);

  @override
  State<StatList> createState() => _StatListState();
}

class _StatListState extends State<StatList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      margin: EdgeInsets.only(top: 35),
      decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, .6),
          borderRadius: BorderRadius.circular(25)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [StatItem(), StatItem()],
      ),
    );
  }
}

class StatItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 13),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textDirection: TextDirection.ltr,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                "Пришло в этом месяце",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontFamily: "Nunito", fontSize: 16),
              ),
              Text(
                "240 000 ₽",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    fontFamily: "Nunito",
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ],
          )
        ],
      ),
    );
  }
}
