import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class Search_filter extends StatelessWidget {
  Search_filter({Key? key}) : super(key: key);

  var sizedwidth = const SizedBox(
    width: 10,
  );
  var sizedheight = const SizedBox(
    height: 10,
  );
  Color color = Color.fromARGB(255, 9, 14, 133);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: appBar(),
      body: body(context),
    ));
  }

  // Appbar-----------------------------------
  AppBar appBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 238, 179, 5),
      title: Text(
        "Sort & Filters",
        style: TextStyle(color: Color.fromARGB(255, 9, 14, 133), fontSize: 25),
      ),
      centerTitle: true,
      leading: Icon(
        Icons.arrow_back_ios,
        color: Color.fromARGB(255, 9, 14, 133),
      ),
    );
  }
  // ----------------------------------------------

  body(context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Entry Amount (Token)",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Clear",
                  style: TextStyle(color: Colors.black, fontSize: 12),
                )
              ],
            ),
          ),
          maxtominbutton(context),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: Row(
              children: [
                undercategory("11-50", context, 40),
                sizedwidth,
                undercategory("51-100", context, 40),
                sizedwidth,
                undercategory("101-1000", context, 40)
              ],
            ),
          ),
          sizedheight,
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: Row(
              children: [undercategory("1001 & Above", context, 40)],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.5),
            child: Text(
              "Numbers of Winners",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                numberofwinnersmaxminbutton(context),
                sizedwidth,
                maxtomin("Max to Min", context)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                numbewinners('3', context),
                sizedwidth,
                numbewinners('4', context),
                sizedwidth,
                numbewinners('5', context),
                sizedwidth,
                numbewinners('6', context),
                sizedwidth,
                numbewinners('7', context),
                sizedwidth,
                numbewinners('8', context),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Row(
              children: [
                numbewinners('9', context),
                sizedwidth,
                numbewinners('10', context),
                sizedwidth,
                numbewinners('11', context),
                sizedwidth,
              ],
            ),
          ),
          sizedheight,
          Container(
            margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.55),
            child: Text(
              "Price Pool(Token)",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          maxtominbutton(context),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: Row(
              children: [
                undercategory("51-100", context, 40),
                sizedwidth,
                undercategory("101-500", context, 40),
                sizedwidth,
                undercategory("501-1000", context, 40)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: Row(
              children: [
                undercategory("1001-5000", context, 40),
                sizedwidth,
                undercategory("5001-10000", context, 40),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 12, right: 12),
            child: Row(
              children: [
                undercategory("10001 & Above", context, 40),
                // sizedwidth,
                // undercategory("5001-10000", context,40),
              ],
            ),
          ),
          // roomsize---------------------------------------------------
          sizedheight,
          Container(
            margin:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.7),
            child: Text(
              "Room Size",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          sizedheight,
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10),
            child: Row(
              children: [
                maxminroomsixe("Min to Max", context),
                sizedwidth,
                maxtomin("Max to Min", context)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 12, right: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Match start Date",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  color: Color.fromARGB(255, 9, 14, 133),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            //  padding: EdgeInsets.all(10),
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(255, 138, 134, 134), blurRadius: 10)
            ]),
            child: TableCalendar(
                focusedDay: DateTime.utc(2022, 04, 8),
                firstDay: DateTime(2021),
                lastDay: DateTime(2023)),
          ),
          sizedheight,
          Container(
            margin:
                EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.7),
            child: Text(
              "Room Size",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          sizedheight,
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10),
            child: Row(
              children: [
                maxminroomsixe("Locked", context),
                sizedwidth,
                maxtomin("Unlocked", context)
              ],
            ),
          ),
          sizedheight,
          Container(
            margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width * 0.75),
            child: Text(
              "Country",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),

          Container(
            margin: EdgeInsets.only(top:12,left: 8,right: 8 ) ,
            padding: EdgeInsets.all(10),
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      color: Color.fromARGB(255, 138, 134, 134), blurRadius: 10)
                ],
                borderRadius: BorderRadius.circular(250)),
                child:Row(
                  children:  [
                    Text("Select Country",style: TextStyle(color: Colors.grey),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width*0.47,
                    ),
                    Icon(Icons.flag),
                    sizedwidth,
                    Text("UZB",style: TextStyle(color: Colors.black,fontSize: 12),),
                    Icon(Icons.arrow_drop_down)
                  ],
                ),
          ),
          sizedheight,
            Container(
            margin: EdgeInsets.only(
                right: MediaQuery.of(context).size.width *0.6),
            child: Text(
              "Organizer Level",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            
          ),
           sizedheight,
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 10),
            child: Row(
              children: [
                maxminroomsixe("Max to Min", context),
                sizedwidth,
                maxtomin("Min to Max", context)
              ],
            ),
          ),
          sizedheight,
            Container(
              margin: EdgeInsets.only(top: 15,left: 8,right: 8),
                width: double.infinity,
                height: 40,
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
                    "Apply",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 1, fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              sizedheight

        ],
      ),
    );
  }

  Padding maxtominbutton(context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.3,
            height: 40,
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
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(255, 9, 14, 133), blurRadius: 15)
                ],
                color: Color.fromARGB(255, 9, 14, 133),
                borderRadius: BorderRadius.circular(250)),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Text(
                "Min to Max",
                style: TextStyle(
                    color: Colors.white, letterSpacing: 1, fontSize: 14),
              ),
            ),
          ),
          sizedwidth,
          maxtomin("Max to Min", context),
          sizedwidth,
          undercategory('1-50', context, 40),
          sizedwidth,
        ],
      ),
    );
  }

  maxtomin(String title, context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(255, 9, 14, 133)),
          boxShadow: [
            BoxShadow(color: Color.fromARGB(255, 9, 14, 133), blurRadius: 10)
          ],
          // color: Color.fromARGB(255, 9, 14, 133),
          borderRadius: BorderRadius.circular(250)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 9, right: 6),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, letterSpacing: 1, fontSize: 14),
        ),
      ),
    );
  }

  undercategory(String title, context, double height) {
    return Container(
      // width: MediaQuery.of(context).size.width * 0.28,
      height: height,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(255, 9, 14, 133)),
          boxShadow: [
            BoxShadow(color: Color.fromARGB(255, 9, 14, 133), blurRadius: 10)
          ],
          // color: Color.fromARGB(255, 9, 14, 133),
          borderRadius: BorderRadius.circular(250)),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 10, right: 10),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, letterSpacing: 1, fontSize: 14),
        ),
      ),
    );
  }

  numberofwinnersmaxminbutton(context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      height: 40,
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
          boxShadow: [
            BoxShadow(color: Color.fromARGB(255, 9, 14, 133), blurRadius: 15)
          ],
          color: Color.fromARGB(255, 9, 14, 133),
          borderRadius: BorderRadius.circular(250)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Text(
          "Min to Max",
          style: TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 14),
        ),
      ),
    );
  }

  numbewinners(String title, context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.12,
      height: 35,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Color.fromARGB(255, 9, 14, 133)),
          boxShadow: [
            BoxShadow(color: Color.fromARGB(255, 9, 14, 133), blurRadius: 10)
          ],
          // color: Color.fromARGB(255, 9, 14, 133),
          borderRadius: BorderRadius.circular(250)),
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 7, right: 10),
        child: Text(
          title,
          style: TextStyle(color: Colors.black, letterSpacing: 1, fontSize: 14),
        ),
      ),
    );
  }

  maxminroomsixe(String title, context) {
    return Container(
      // margin: EdgeInsets.only(right:MediaQuery.of(context).size.width*0.65),
      width: MediaQuery.of(context).size.width * 0.3,
      height: 40,
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
          boxShadow: [
            BoxShadow(color: Color.fromARGB(255, 9, 14, 133), blurRadius: 15)
          ],
          color: Color.fromARGB(255, 9, 14, 133),
          borderRadius: BorderRadius.circular(250)),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 10),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, letterSpacing: 1, fontSize: 14),
        ),
      ),
    );
  }
}
