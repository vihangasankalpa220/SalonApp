import 'package:flutter/material.dart';


class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0,
          title: const Text("It's Nail day"),
          foregroundColor : Colors.black,
          centerTitle: true,
        ),



      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Container(
                        width: 200,
                        height: 150,
                        //decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(40),
                        //border: Border.all(color: Colors.blueGrey)),
                        child: Image.asset('images/main.png'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      validator: ((value) {
                        if (value == null || value.isEmpty) {
                          return 'please enter some text';
                        } else if (value.length < 5) {
                          return 'Enter atleast 5 Charecter';
                        }

                        return null;
                      }),


                      decoration: InputDecoration(
                          hintText: 'Name',
                          labelText: 'Name',
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.green,
                          ),
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: 'Email',
                          labelText: 'Email',
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.lightBlue,
                          ),
                          errorStyle: TextStyle(fontSize: 18.0),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9.0)))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(

                      decoration: InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          prefixIcon: Icon(
                            Icons.password,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red),
                              borderRadius:
                              BorderRadius.all(Radius.circular(9)))),
                    ),
                  ),
                  Center(
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Container(
                          // margin: EdgeInsets.fromLTRB(200, 20, 50, 0),
                          child: RaisedButton(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(color: Colors.white, fontSize: 22),
                            ),
                            onPressed: () {
                              if (true) {
                                print('form submiitted');
                              }
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            color: Colors.blue,
                          ),

                          width: MediaQuery.of(context).size.width,

                          height: 50,
                        ),
                      )),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Text(
                          'OR',
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        ),
                      ),
                    ),
                  ),
                  // Center(
                  //   child: Padding(
                  //     padding: EdgeInsets.only(top: 20, left: 90),
                  //     child: Row(
                  //       children: [
                  //         Container(
                  //             height: 40,
                  //             width: 40,
                  //             child: Image.asset(
                  //               'assets/google.png',
                  //               fit: BoxFit.cover,
                  //             )),
                  //         Container(
                  //           height: 70,
                  //           width: 70,
                  //           child: Image.asset(
                  //             'assets/vishal.png',
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ),
                  //         Container(
                  //           height: 40,
                  //           width: 40,
                  //           child: Image.asset(
                  //             'assets/google.png',
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Center(
                    child: Container(
                      padding: EdgeInsets.only(top: 60),
                      child :new InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/loginPageRoute");
                        },
                        child: new Padding(
                          padding: new EdgeInsets.all(10.0),
                          child: new Text("Sign In"),
                        ),
                      ),
                    ),
                  )
                ],
              )),
        ),
      ));
  }
}