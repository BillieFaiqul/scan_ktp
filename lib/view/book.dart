import 'package:flutter/material.dart';
import 'navbar.dart';

class Book extends StatefulWidget{
  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book>{
  TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 50),
                height: 250,
                decoration: new BoxDecoration(
                  color: Color.fromARGB(255, 16, 26, 100),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.elliptical(
                          MediaQuery.of(context).size.width, 200.0),
                    bottomRight: Radius.elliptical(
                          MediaQuery.of(context).size.width, 150.0),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    margin: EdgeInsets.only(right: 30, left: 30),
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
  
                          child: Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                              style: TextStyle(
                                fontSize: 20
                              ),
                              controller: _searchController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.only(left: 15, right: 15),
                                hintText: "Search Books",
                                hintStyle:  TextStyle(fontSize: 20)
                              ),
                            ),
                          )
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10, right: 15),
                          child: GestureDetector(
                            onTap: (){},
                            child: Icon(
                              Icons.search,
                              size: 40,
                            ),
                          )
                        )
                      ],
                    ),
                  ),
                )
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(right: 30, left: 30, top: 30),
                  children: card(), 
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Navbar(),
      ),
    );
  }

  List<Widget> card(){
    List<Widget> li = [];
    for(int i = 0; i < 10; i++){
      li.add(Container(
                      height: 150,
                      padding: EdgeInsets.only(right: 10, left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
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
                      child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  LimitedBox(
                                    maxWidth: MediaQuery.of(context).size.width * 3 / 12,
                                    child: Image.asset('assets/images/book.jpg',
                                    height: 200,
                                    width: 70,),
                                  ),           
                                  LimitedBox(
                                    maxWidth: MediaQuery.of(context).size.width * 7 / 12,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text('Dikembalikan Sebelum: 12:00 AM, 28 Desember 2023',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 8
                                          ),),
                                        ),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text('Pengantar Teknologi Informasi',
                                                maxLines: 2,
                                                style: TextStyle(
                                                  fontSize: 20
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Padding(padding: EdgeInsets.only(top: 15)),
                                        Align(
                                          alignment: Alignment.topLeft,
                                          child: Text('Sutarman, S.Kom., M.Kom.',
                                                        style: TextStyle(
                                                          fontSize: 10
                                                        ),
                                                  ),
                                        )
                                        
                                        
                                      ],
                                    ),
                                  ),     
                                ],
                              ),
                    ),
                    );
        li.add(Padding(padding: EdgeInsets.only(top: 10)));
    }

    return li;
  }
}