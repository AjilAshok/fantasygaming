import 'package:fantasygaming/screen/private_room_main.dart';
import 'package:flutter/material.dart';

class Confirm_page extends StatelessWidget {
  const Confirm_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
          child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.8,
        // color: Colors.red,
        decoration: BoxDecoration(
            //  color: Colors.red,
            color: Colors.white,
            border: Border.all(
                width: 2, color: const Color.fromARGB(255, 9, 14, 133)),
            boxShadow: const [
              BoxShadow(
                  color: Color.fromARGB(255, 138, 134, 134), blurRadius: 10)
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "Confirm to Join",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
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
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => PrivateYespage(),));
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(left: 30, top: 10),
                      child: Text(
                        "Yes",
                        style: TextStyle(
                            color: Colors.white, letterSpacing: 1, fontSize: 16),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
               height: 45,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Color.fromARGB(255, 9, 14, 133)),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromARGB(255, 9, 14, 133),
                            blurRadius: 10)
                      ],
                      // color: Color.fromARGB(255, 9, 14, 133),
                      borderRadius: BorderRadius.circular(250)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      "No",
                      style: TextStyle(
                          color: Colors.black, letterSpacing: 1, fontSize: 16),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    ));
  }
}
