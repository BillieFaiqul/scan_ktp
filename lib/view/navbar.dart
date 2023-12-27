import 'package:flutter/material.dart';
import 'search.dart';
import 'profile.dart';
import 'book.dart';

class Navbar extends StatefulWidget{
  @override
  State<Navbar> createState() => _NavbarState();
}
class _NavbarState extends State<Navbar>{
  static int index = 1;

  static final List<IconData> icon = [
    Icons.home,
    Icons.book,
    Icons.person_2
  ];

  void forceIndex(idx){
    index = idx;
  }

  static final List<IconData> icon_outlined = [
    Icons.home_outlined,
    Icons.book_outlined,
    Icons.person_2_outlined
  ];

  @override
  Widget build(BuildContext context){
   return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 201, 201, 201),
            offset: Offset(0, 5),
            blurRadius: 2.0,
            spreadRadius: 1.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: const Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ]
      ),
      margin: EdgeInsets.only(right: 30, left: 30, bottom: 10),
      padding: EdgeInsets.only(right: 40, left: 40, top: 10, bottom: 10), 
      height: 80,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isChosen(1),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index = 1;
                  });
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Search(),
                    ),
                  );
                },
                child: Icon(
                  icons(1),
                  color: Color.fromARGB(255, 16, 26, 100),
                  size: 50,
                  ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isChosen(2),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index = 2;
                  });
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Book(),
                    ),
                  );
                },
                child: Icon(
                  icons(2),
                  color: Color.fromARGB(255, 16, 26, 100),
                  size: 50,
                  ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isChosen(3),
              GestureDetector(
                onTap: (){
                  setState(() {
                    index = 3;
                  });
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => Profile(),
                    ),
                  );
                },
                child: Icon(
                  icons(3),
                  color: Color.fromARGB(255, 16, 26, 100),
                  size: 50,
                  ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  static Widget isChosen(idx){
    if(idx == index){
      return Container(
                height: 5,
                width: 30,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 16, 26, 100),
                  borderRadius: BorderRadius.circular(25),
                ),
              );
    }
    return Container();
  }

  static IconData icons(idx){
    if(idx == index){
      return icon[idx-1];
    } else {
      return icon_outlined[idx-1];
    }

  }

}
class Force{

  static void force(idx){
    _NavbarState.index = idx;
  }

}