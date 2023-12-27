import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'login.dart';

class Navigators extends StatefulWidget{
  @override
  State<Navigators> createState() => _NavigatorsState();
}

class _NavigatorsState extends State<Navigators>{
  int navCount = 1;
  @override
  Widget build(BuildContext context) {
    return page();
    
  }

  Widget page(){
    if(navCount == 1){
      return navOne();
    } else if(navCount == 2){
      return navTwo();
    } else if(navCount == 3){
      return navThree();
    }

    return Container();
  }

  Widget navOne(){
    return SafeArea(
        child: Scaffold(
            body: Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height - 350 - 140 - 32,
                    child: SvgPicture.asset('assets/images/img_group.svg')
                  ),
                  Container(
                    height:  350,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50 )),
                        Center(
                          child: Text(
                            "Selamat Datang",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Center(
                          child: Text(
                            "Selamat datang di ScanBorrow, teman pembaca!\nKami hadir untuk membuat pengalaman peminjaman buku menjadi lebih mudah dan\nmenyenangkan.",
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              color: Color.fromARGB(255, 201, 201, 201),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    height:  140,
                    child: Row(
                      children: [
                        GestureDetector(
                        onTap: (){
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (BuildContext context) => Login(),
                            ),
                          );
                        },
                        child: Text("Lewati",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 201, 201, 201),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                          ),
                        Spacer(),
                        Container(
                          width: 25,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 16, 26, 100),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 201, 201, 201),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 201, 201, 201),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              navCount = 2;
                              page();
                            });
                          },
                          child: Container(
                          width: 60,
                          height: 60,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 16, 26, 100),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/img_arrow_left.png', 
                            height: 20, 
                            width: 20,
                            ),
                          ),
                        )                  
                      ],
                      )
                  ),
                ],
                ),
            ),
        ),
    );
  }

  Widget navTwo(){
    return SafeArea(
        child: Scaffold(
            body: Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height - 350 - 140 - 32,
                    child: SvgPicture.asset('assets/images/img_group_primarycontainer.svg')
                  ),
                  Container(
                    height:  350,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50 )),
                        Center(
                          child: Text(
                            "Scan KTP untuk Memulai",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Center(
                          child: Text(
                            "Selanjutnya, lakukanlah langkah sederhana\ndengan melakukan scan KTP Anda untuk\nmemulai perjalanan membaca yang tak \nterbatas",
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              color: Color.fromARGB(255, 201, 201, 201),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    height:  140,
                    child: Row(
                      children: [
                        GestureDetector(
                        onTap: (){
                         Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (BuildContext context) => Login(),
                            ),
                          );
                        },
                        child: Text("Lewati",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17.0,
                                    color: Color.fromARGB(255, 201, 201, 201),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                          ),
                        Spacer(),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 201, 201, 201),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        Container(
                          width: 25,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 16, 26, 100),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 201, 201, 201),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            setState((){
                              navCount = 3;
                              page();
                            });
                          },
                          child: Container(
                          width: 60,
                          height: 60,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 16, 26, 100),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/img_arrow_left.png', 
                            height: 20, 
                            width: 20,
                            ),
                          ),
                        )                  
                      ],
                      )
                  ),
                ],
                ),
            ),
        ),
    );
  }

  Widget navThree(){
    return SafeArea(
        child: Scaffold(
            body: Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: MediaQuery.of(context).size.height - 350 - 140 - 32,
                    child: Image.asset('assets/images/img_group_36.png', height: 270)
                  ),
                  Container(
                    height:  350,
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 50 )),
                        Center(
                          child: Text(
                            "Jelajahi dan Pinjam Buku",
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Center(
                          child: Text(
                            "Sekarang, Anda siap untuk menjelajahi koleksi\nbuku kami yang kaya dan beragam, Dengan\n sekali sentuhan, temukan buku-buku terbaru,\nklasik, atau sesuai dengan minat Anda.",
                            textAlign: TextAlign.center,
                            maxLines: 4,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              color: Color.fromARGB(255, 201, 201, 201),
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ]
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15, left: 15),
                    height:  140,
                    child: Row(
                      children: [
                        GestureDetector(
                        onTap: (){
                        },
                        child: Text("Lewati",
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 17.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                          ),
                        Spacer(),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 201, 201, 201),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        Container(
                          width: 12,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 201, 201, 201),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(right: 5)),
                        Container(
                          width: 25,
                          height: 12,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 16, 26, 100),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20)
                          ),
                        ),
                        Spacer(),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (BuildContext context) => Login(),
                            ),
                          );
                          },
                          child: Container(
                          width: 60,
                          height: 60,
                          decoration: new BoxDecoration(
                            color: Color.fromARGB(255, 16, 26, 100),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/images/img_arrow_left.png', 
                            height: 20, 
                            width: 20,
                            ),
                          ),
                        )                  
                      ],
                      )
                  ),
                ],
                ),
            ),
        ),
    );
  }
}