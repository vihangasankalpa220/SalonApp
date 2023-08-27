import 'dart:html';

import 'package:flutter/material.dart';
import 'package:salon_app/uidata.dart';
import 'package:salon_app/widgets/image_card.dart';
import 'package:salon_app/widgets/my_column.dart';
import 'package:salon_app/widgets/specialist_column.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screen_size_width = MediaQuery.of(context).size.width;
    final screen_size_height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
            title: const Text("Kandy"),
        foregroundColor : Colors.black,
        centerTitle: false,
        leading: IconButton(
            icon: Icon(Icons.short_text, color: Colors.black87),
            onPressed: () {}),
        actions: <Widget>[
          Container(

            decoration: BoxDecoration(),
            margin: EdgeInsets.only(right: 15, top: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage(
                "images/profile.jpg",
              ),
            ),
          ),
        ],
      ),
      body:
      Container(
        width: screen_size_width,
        height: screen_size_height,
        padding: EdgeInsets.only(top:16, left:16, right: 16),

        child: SingleChildScrollView(



          child: Column(
            children: <Widget>[

              Row(
          children: <Widget>[ Text("Today's Top Picks",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600))],),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/braid.png",
                        columnTxt: "Braids",
                        columnBg: UIData.lightColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/abuja.png",
                        columnTxt: "Abuja",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/blow.png",
                        columnTxt: "Blowdry",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/haircut.png",
                        columnTxt: "Haircut",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/relaxer.png",
                        columnTxt: "Relaxer",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/shampoo.png",
                        columnTxt: "Shampoo",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/nail.png",
                        columnTxt: "Manicure",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () =>
                          Navigator.pushNamed(context, UIData.bookPageRoute),
                      child: MyColumn(
                        columnImg: "images/more.png",
                        columnTxt: "More",
                        columnBg: UIData.lighterColor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 6),



              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Ongoing Appointments",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    FlatButton(
                        onPressed: () {},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),

              SizedBox(height: 6),


              Container(
                  height: screen_size_height * .3,
                  width: MediaQuery.of(context).size.width * 50,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: <Widget>[

                         Container(
                           width: MediaQuery.of(context).size.width * .5,
                          height: 200,
                          padding: new EdgeInsets.all(10.0),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            color: Colors.white70,
                            elevation: 10,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading:
                                  CircleAvatar(
                                    radius: 22,
                                    backgroundImage: AssetImage(
                                      "images/profile.jpg",
                                    ),
                                  ),




                                  title: Text(
                                      'Full colour red patten design',
                                      style: TextStyle(fontSize: 50.0)
                                  ),
                                  subtitle: Text(
                                      'The red pattern in kandy\n12/12/2024 AT 9.30 AM',

                                      style: TextStyle(fontSize: 18.0,color: Colors.black12)
                                  ),

                                  trailing: Text(
                                      'Rs: 6000.00',

                                      style: TextStyle(fontSize: 18.0,color: Colors.blue)
                                  ),

                                ),

                     Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[


                                ElevatedButton(
                                  child: Text("Pending"),
                                  onPressed: () => print("it's pressed"),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.orange,
                                    onPrimary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                  ),
                                ),

                      ],),
                              ],
                            ),
                          ),
                        ),

                    ],
                  )),




              ListTile(
                title: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                          width: MediaQuery.of(context).size.width * .5,
                          height: 40,
                          child: RaisedButton(onPressed: () {Navigator.pushNamed(context, UIData.loginPageRoute);},
                            child: Text("MAKE YOUR APPOINTMENT TODAY ->"),color: Colors.lightBlueAccent,textColor: Colors.black,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),

                          )

                      ),
                    ),


                  ],
                ),
              ),


              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                        child: Text("Saloons",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600))),
                    FlatButton(
                        onPressed: () {},
                        child: Text("View All",
                            style: TextStyle(color: Colors.black54)))
                  ]),
              SizedBox(height: 6),
              Container(
                  height: 230,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      SpecialistColumn(
                          specImg: "images/braid2.jpg", specName: "Anny Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/profile.jpg", specName: "Joy Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid3.jpg",
                          specName: "Patience Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid2.jpg", specName: "Anny Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid2.jpg", specName: "Anny Roy"),
                      SizedBox(width: 12),
                      SpecialistColumn(
                          specImg: "images/braid2.jpg", specName: "Anny Roy"),
                    ],
                  )),

              Container(
                  height: screen_size_height * .2,
                  width: screen_size_width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      ImageCard(cardImg: "images/braid4.jpg"),
                      SizedBox(width: 10),
                      ImageCard(cardImg: "images/braid3.jpg"),
                    ],
                  )),




            ],
          ),
        ),
      ),
    );
  }
}
