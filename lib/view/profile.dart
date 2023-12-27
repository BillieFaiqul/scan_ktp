import 'package:flutter/material.dart';
import 'navbar.dart';

class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{
  TextEditingController _emailController = TextEditingController();
  TextEditingController _fullNameController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();

  void dispose(){
    _emailController.dispose();
    _fullNameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    _emailController.text = "david123@gmail.com";
    _fullNameController.text = "David Ananta";
    _phoneController.text = "0824-9843-7264";
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.only(right: 30, left: 30, top: 40),
          child: SingleChildScrollView(reverse: true, child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Image.asset("assets/images/img_arrow_down.png",
                    height: 40,),
                    Padding(padding: EdgeInsets.only(right: 20)),
                    Text("Profile",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontSize: 25,
                      fontWeight: FontWeight.w600
                    ),)
                  ],
                )
              ),
              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Positioned(
                          child: CircleAvatar(
                              radius: 80,
                              backgroundImage: AssetImage("assets/images/img_ellipse_30.png"),
                            ),
                        ),
                        Positioned(
                          child: GestureDetector(
                            child: Image.asset("assets/images/img_edit.png"),
                            onTap: () {},
                          ),
                          top: 120,
                          left: 120,
                        )
                      ],
                    ),
                    Padding(padding: EdgeInsets.only(bottom: 20)),
                    Align(
                          alignment: Alignment.topLeft,
                          child: Text('Alamat Email',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17
                                ),
                              ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 15
                            ),
                            controller: _emailController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  ),
                                borderRadius: BorderRadius.circular(50.0),
                                ),
                              contentPadding: EdgeInsets.only(left: 15, right: 15),
                              hintText: "Masukkan Alamat Email",
                              hintStyle:  TextStyle(fontSize: 15)
                            ),
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('Nama Lengkap',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17
                                ),
                              ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 15
                            ),
                            controller: _fullNameController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  ),
                                borderRadius: BorderRadius.circular(50.0),
                                ),
                              contentPadding: EdgeInsets.only(left: 15, right: 15),
                              hintText: "Masukkan Nama Lengkap",
                              hintStyle:  TextStyle(fontSize: 15)
                            ),
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top: 30)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text('No. HP',
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 17
                                ),
                              ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextFormField(
                            style: TextStyle(
                              fontSize: 15
                            ),
                            controller: _phoneController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  ),
                                borderRadius: BorderRadius.circular(50.0),
                                ),
                              contentPadding: EdgeInsets.only(left: 15, right: 15),
                              hintText: "Masukkan Nomer HP",
                              hintStyle:  TextStyle(fontSize: 15)
                            ),
                          )
                        ),
                        Padding(padding: EdgeInsets.only(top: 50)),
                        GestureDetector(
                          onTap: (){},
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(29),
                              border: Border.all(
                                color: Color.fromARGB(255, 201, 201, 201),
                                width: 0.5, 
                              ),
                            ),
                            width: MediaQuery.of(context).size.width,
                            child: Text("Upgrade Ke Akun Premium",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600
                            ),
                            ),
                          ),
                        )
                  ],
                ),
              ),
              Padding(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)
                  )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
      ),
    );
  }
}
