

import 'package:fantasygaming/screen/private_room_entry.dart';
import 'package:fantasygaming/screen/searchand_filter.dart';
import 'package:flutter/material.dart';

class Public_room extends StatelessWidget {
  Public_room({Key? key}) : super(key: key);
  var value = 0.6;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation:FloatingActionButtonLocation.centerFloat ,
        floatingActionButton: Container(
           decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 9, 14, 133),
                        Color.fromARGB(255, 67, 72, 219)
                        // Colors.red,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 9, 14, 133),
                          blurRadius: 15)
                    ],
                    color: Color.fromARGB(255, 9, 14, 133),
                    borderRadius: BorderRadius.circular(250)),

          width: 400,
          child: FloatingActionButton.extended(
            backgroundColor: Colors.transparent,
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => PrivatRoom_Entru(),));
            
          },
          label:Text("Create Room") ,
          ),
        ),
        appBar: appBar(),
        body: body(context),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 238, 179, 5),
      title: Text(
        "Select Room",
        style: TextStyle(color: Color.fromARGB(255, 9, 14, 133),fontSize:25 ),
      ),
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back_ios,
        color: Color.fromARGB(255, 9, 14, 133),
      ),
    );
  }

  body(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 9, 14, 133),
                        Color.fromARGB(255, 67, 72, 219)
                        // Colors.red,
                      ],
                    ),
                    boxShadow: const [
                      BoxShadow(
                          color: Color.fromARGB(255, 9, 14, 133),
                          blurRadius: 15)
                    ],
                    color: Color.fromARGB(255, 9, 14, 133),
                    borderRadius: BorderRadius.circular(250)),
                child: const Padding(
                  padding: EdgeInsets.only(left: 30, top: 8),
                  child: Text(
                    "Public(20)",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 1, fontSize: 16),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 35,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Color.fromARGB(255, 9, 14, 133)),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 9, 14, 133),
                          blurRadius: 10
                          )
                    ],
                    // color: Color.fromARGB(255, 9, 14, 133),
                    borderRadius: BorderRadius.circular(250)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 7),
                  child: Text(
                    "Private(15)",
                    style: TextStyle(
                        color: Colors.black, letterSpacing: 1, fontSize: 16),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          searchandfilter(context),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color.fromARGB(255, 9, 14, 133),
                      Color.fromARGB(255, 67, 72, 219)
                      // Colors.red,
                    ],
                  ),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Price Pool",
                            style: TextStyle(
                              color: Colors.white,
                            )),
                        Text("Entry",
                            style: TextStyle(
                              color: Colors.white,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("10 Token",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(85, 180, 174, 174),
                                borderRadius: BorderRadius.circular(250)),
                            height: 30,
                            width: 50,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 15, right: 8, top: 8),
                              child: Text(
                                "25",
                                style: TextStyle(color: Colors.white),
                              ),
                            )),
                      ],
                    ),
                  ),
                  Slider(
                    max: 10,
                    min: 0,
                    activeColor: Colors.white,
                    thumbColor: Colors.amber,
                    
                    inactiveColor: Color.fromARGB(85, 180, 174, 174),
                    value: 6,
                    onChanged: (value) {
                      // value=value;
                    }
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text("5 Joined",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                              )),
                          Text("6 Spot Left",
                              style: TextStyle(
                                color: Colors.white,
                                  fontSize: 12
                              ))

                      ],
                    ),
                  ),
                      Container(
                    padding: const EdgeInsets.only(left: 8,right: 8,top: 5),
                    // margin: EdgeInsets.,
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                         Text("Rules",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12
                              )),
                        Icon(Icons.flag)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          
        ],
      ),
      
    );
  }

  Row searchandfilter(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 228, 193),
              borderRadius: BorderRadius.circular(250)),
          height: 30,
          width: 80,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.search,
                    size: 18, color: Color.fromARGB(255, 9, 14, 133)),
                Text(
                  "Search",
                  style: TextStyle(color: Color.fromARGB(255, 9, 14, 133)),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          margin: EdgeInsets.only(right: 15),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 246, 228, 193),
              borderRadius: BorderRadius.circular(250)),
          height: 30,
          width: 120,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(Icons.sort,
                    size: 18, color: Color.fromARGB(255, 9, 14, 133)),
                InkWell(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Search_filter(),));
              
  
                  },
                  child: Text(
                    "Sort & Filters",
                    style: TextStyle(
                      color: Color.fromARGB(255, 9, 14, 133),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
