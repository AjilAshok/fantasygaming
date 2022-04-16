import 'package:fantasygaming/screen/confirm_page.dart';
import 'package:flutter/material.dart';

class PrivatRoom_Entru extends StatelessWidget {
  PrivatRoom_Entru({Key? key}) : super(key: key);
  var sizedwidth = const SizedBox(
    width: 10,
  );
  var sizedheight = const SizedBox(
    height: 10,
  );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appBar(),
      body: body(context),
    ));
  }

  AppBar appBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 238, 179, 5),
      title: Text(
        "Select Room",
        style: TextStyle(color: Color.fromARGB(255, 9, 14, 133), fontSize: 25),
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
          // privatepublicbtn--------------------------------------
          publicprivatebutton(),
          // -------------------------------------------------s
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.8,
              // color: Colors.red,
              decoration: BoxDecoration(
                  //  color: Colors.red,
                  color: Colors.white,
                  border: Border.all(
                      width: 2, color: const Color.fromARGB(255, 9, 14, 133)),
                  boxShadow: const [
                    BoxShadow(
                        color: Color.fromARGB(255, 138, 134, 134),
                        blurRadius: 10)
                  ],
                  borderRadius: BorderRadius.circular(10)),
              child: Expanded(
                  child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Text(
                      "Enter Room Key",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                 SizedBox(
                   height: 40,
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 50),
                    child: Row(
                      children: [
                        containerkey(),
                        sizedwidth,
                        containerkey(),
                        sizedwidth,
                        containerkey(),
                        sizedwidth,
                        containerkey()
                      ],
                    ),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Confirm_page(),));
                      
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                       width: MediaQuery.of(context).size.width * 0.6,
                      height: 45,
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
                      child: Center(
                        child: Text(
                          "Enter",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }

  Container containerkey() {
    return Container(
      height: 70,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              width: 2, color: const Color.fromARGB(255, 9, 14, 133)),
          borderRadius: BorderRadius.circular(10)),
    );
  }

  Row publicprivatebutton() {
    return Row(
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
                    color: Color.fromARGB(255, 9, 14, 133), blurRadius: 15)
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
              border: Border.all(color: const Color.fromARGB(255, 9, 14, 133)),
              boxShadow: const [
                BoxShadow(
                    color: Color.fromARGB(255, 9, 14, 133), blurRadius: 10)
              ],
              borderRadius: BorderRadius.circular(250)),
          child: const Padding(
            padding: EdgeInsets.only(left: 30, top: 7),
            child: Text(
              "Private(15)",
              style: TextStyle(
                  color: Colors.black, letterSpacing: 1, fontSize: 16),
            ),
          ),
        )
      ],
    );
  }
}
