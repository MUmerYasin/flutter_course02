import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Course'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              toolbarHeight: 100.0,
        title:
          Center(

              child: Text(widget.title,textAlign: TextAlign.center,)
          ),


      ),
      body:Center(
        child: Column(
           children: [
              Stack(
                children: <Widget>[
                  Positioned(
                     // top: 0.0,
                    // width: 300,
                    // height: height * .5,
                    // decoration: BoxDecoration
                    // assets/images/11.png
                     child: Image.asset('assets/images/11.png', fit: BoxFit.fill),
                    // color: Colors.red,
                  ),

                  Positioned(
                    bottom: 0.0,
                    left: 10.0,
                    // child: Container(
                      child:ElevatedButton(
                        // style: style,
                        onPressed: () {},
                        child: const Text('Enabled'),
                      ),

                  ),
                  // GestureDetector(
                  //   behavior: HitTestBehavior.translucent,
                  //   onTap: (){
                  //
                  //   },
                  //   child: Container(
                  //
                  //     color: Colors.transparent,
                  //     child: const Text(
                  //       'M. Umer Yasin',
                  //       textAlign: TextAlign.right,
                  //       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.red),
                  //     ),
                  //   ),
                  // ),
                  const Positioned(
                    bottom: 0.0,
                      right: 10.0,
                      child:Text(
                        'M. Umer Yasin',
                        textAlign: TextAlign.right,
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0, color: Colors.red),
                      ),
                  ),
                ],
              ),
            ]
        ),
      ),

    );
  }
}
