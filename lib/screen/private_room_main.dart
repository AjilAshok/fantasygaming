import 'package:flutter/material.dart';

class PrivateYespage extends StatelessWidget {
  const PrivateYespage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar:appBar(context) ,
      body: SingleChildScrollView(
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
            height: 20,
          ),
            Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   begin: Alignment.topRight,
                  //   end: Alignment.bottomLeft,
                  //   colors: [
                  //     Color.fromARGB(255, 9, 14, 133),
                  //     Color.fromARGB(255, 67, 72, 219)
                  //     // Colors.red,
                  //   ],
                  // ),
                   border: Border.all(color: Color.fromARGB(255, 9, 14, 133)),
                  color: Colors.white,
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
                              color: Colors.black,
                            )),
                        Text("Entry",
                            style: TextStyle(
                              color: Colors.black,
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("500 Token",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                        Container(
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
                                // color: Color.fromARGB(85, 180, 174, 174),
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
                    activeColor: Color.fromARGB(255, 9, 14, 133),
                    thumbColor: Color.fromARGB(255, 9, 14, 133),
                    
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
                                color: Colors.black,
                                fontSize: 12
                              )),
                          Text("6 Spot Left",
                              style: TextStyle(
                                color: Colors.black,
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
                                color: Colors.black,
                                fontSize: 12
                              )),
                                Text("2 on-fields",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                              )),
                     
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          ],
        ),

      ),
    ));
  }
    AppBar appBar(context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 238, 179, 5),
      title: Text(
        "Select Room",
        style: TextStyle(color: Color.fromARGB(255, 9, 14, 133),fontSize:25 ),
      ),
      centerTitle: true,
      leading: IconButton(
        icon: Icon( Icons.arrow_back_ios,color: Color.fromARGB(255, 9, 14, 133),),
        onPressed: (){
          Navigator.pop(context);
        },
        // Icons.arrow_back_ios,
        // color: Color.fromARGB(255, 9, 14, 133),
      ),
    );
  }
}