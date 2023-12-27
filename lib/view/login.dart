import 'package:flutter/material.dart';
import 'register.dart';

class Login extends StatefulWidget{
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login>{
  bool _obscurePassword = true;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void dispose(){
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

    @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    alignment: Alignment.bottomCenter,
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Masuk",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 40,
                            fontWeight: FontWeight.w800
                          ),)
                        ),
                        Padding(padding: EdgeInsets.only(top: 5)),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text("Ayo, sambut keseruan dengan masuk ke dalam\ndunia ScanBorrow! Daftarkan akunmu sekarang!",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 15,
                          ),)
                          ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20),
                    padding: EdgeInsets.only(top: 30),
                    height: MediaQuery.of(context).size.height - 150 - 200 - 32,
                    child: Column(
                      children: [
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
                          child: Text('Kata Sandi',
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
                            obscureText: _obscurePassword,
                            style: TextStyle(
                              fontSize: 15
                            ),
                            controller: _passwordController,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                        _obscurePassword ? Icons.visibility : Icons.visibility_off,
                                      ),
                                onPressed: (){
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                }
                              ),
                              border: InputBorder.none,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 201, 201, 201),
                                  ),
                                borderRadius: BorderRadius.circular(50.0),
                                ),
                              contentPadding: EdgeInsets.only(left: 15, right: 15),
                              hintText: "Masukkan Kata Sandi",
                              hintStyle:  TextStyle(fontSize: 15)
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 150,
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.only(left: 20, right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 16, 26, 100)
                          ),
                          onPressed: (){},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              "Masuk",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Colors.white
                            ),
                            ),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10)),
                        GestureDetector(
                          onTap:(){
                            Navigator.pushReplacement<void, void>(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) => Register(),
                              ),
                            );
                          },
                          child: Text("Belum memiliki akun? Daftar",
                          style: TextStyle(
                            color: Color.fromARGB(255, 86, 104, 239)
                          ),),
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