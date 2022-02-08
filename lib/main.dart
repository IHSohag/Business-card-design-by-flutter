import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffFFE7AA),
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Business card"),
          elevation: 30,
          leading: const Icon(Icons.menu),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              margin: const EdgeInsets.only(left: 10,right: 10),
              padding: const EdgeInsets.all(5),
              width: double.infinity,
              height: 300,
              color: Colors.white,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:  const <Widget>[
                      CircleAvatar(
                        radius: 80,
                        backgroundImage: AssetImage('images/sohag.jpg'),
                      ),
                      Text("Injamul haq sohag",style: TextStyle(fontSize: 20),),
                      Text("Flutter developer",style: TextStyle(fontSize: 15),)
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 2,
                    height: 250,
                    color: (Colors.black),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:   <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:  [
                          const Icon(Icons.home),
                          const SizedBox(
                            width: 5,
                          ),
                          Column(
                            children: const[
                              Text("Nikli, Kishoreganj",
                                style: TextStyle(fontSize: 14),
                              ),
                              Text("230 Block-B"),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const[
                          Icon(Icons.phone),
                          SizedBox(
                            width: 5,
                          ),
                          Text("+88 01316255373")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const[
                          Icon(Icons.mail),
                          SizedBox(
                            width: 5,
                          ),
                          Text("ihsohag@gmail.com")
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: const[
                          Icon(Icons.facebook),
                          SizedBox(
                            width: 5,
                          ),
                          Text("Ih Sohag")
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
