import 'package:flutter/material.dart';

class MyHomePage3 extends StatefulWidget {
  const MyHomePage3({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage3> createState() => _MyHomePageState3();
}

class _MyHomePageState3 extends State<MyHomePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Demo'),
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),

    body: SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            Row(
              children: const <Widget>[
                Expanded(
                  child: ListTile(
                    leading: FlutterLogo(),
                    title: Text('These ListTiles are expanded '),
                  ),
                ),
              ],
            ),
            Row(
              children: const <Widget>[
                Expanded(
                  child: ListTile(
                    trailing: FlutterLogo(),
                    title: Text('to fill the available space.'),
                  ),
                ),
              ],
            ),
            // Row(
            //   children: const <Widget>[
            //     Expanded(
            //         // child: ListTile(title: Text('One-line ListTile')),
            //     ),
            //   ],
            // ),
          ],

          ),

      ),
      ),


    );
  }
}
