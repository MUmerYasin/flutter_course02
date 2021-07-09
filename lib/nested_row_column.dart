import 'package:flutter/material.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState2();
}

class _MyHomePageState2 extends State<MyHomePage2> {

  //-----------------------------------------------------------------------
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //-------------------------------------------------------------------------------


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 80.0,
        title: const Center(
            child: Text(
          ' ROWs and Columns ',
          textAlign: TextAlign.center,
        )),
      ),
      //-------------------------------------------------------------------
      // Drawer

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

      //---------------------------------------------------------------

      body: SingleChildScrollView(
        // child: Column(
        //   // reference =>
        //   //   https://flutter.dev/docs/development/ui/layout
        //   // https://api.flutter.dev/flutter/rendering/CrossAxisAlignment-class.html
        //    // https://api.flutter.dev/flutter/rendering/MainAxisAlignment-class.html
        //
        //   // mainAxisSize: MainAxisSize.min, //column shrinks to fit the children. Reduce/Less All distance  between widgets
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly, //divides the free space (all side )evenly between, before, and after each image.
        //     //
        //     crossAxisAlignment: CrossAxisAlignment.start,  // Star/Top and left side widgets
        //     // crossAxisAlignment: CrossAxisAlignment.center, // center all widgets
        //     // crossAxisAlignment: CrossAxisAlignment.end, //Place the children as close to the end of the cross axis as possible. // right side  all widgets and end
        //     // crossAxisAlignment: CrossAxisAlignment.stretch, // This causes the constraints passed to the children to be tight in the cross axis.
        //     // crossAxisAlignment: CrossAxisAlignment.baseline, //Place the children along the cross axis such that their baselines match.
        //     // crossAxisAlignment: CrossAxisAlignment.values, //
        //
        // ),

        child: Container(
          // padding: const EdgeInsets.all(10),
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),

          child: Column(
            // mainAxisSize: MainAxisSize.min,
            // mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisAlignment: MainAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            // crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20.0),
                    child: const Text(
                      'Strawberry Pavlova',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 30.0),
                    ),
                  ),
                ],
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.center,

                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // mainAxisAlignment: MainAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.end,

                children: [
                  // Expanded(),
                  Column(
                    children: [
                      Icon(Icons.kitchen, color: Colors.green[500]),
                      const Text('PRE:'),
                      const Text('25 min'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.green[500],
                      ),
                      const Text('COOk:'),
                      const Text('1 hr'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.restaurant, color: Colors.green[500]),
                      const Text('FEEDS:'),
                      const Text('4-6'),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.only(top: 20.0, left: 30.0),
                    // width: 300,
                    decoration: const BoxDecoration(
                      color: Colors.black38,
                    ),

                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/11.png',
                              fit: BoxFit.fill,
                              width: 120,
                            ),
                            Image.asset(
                              'assets/images/11.png',
                              fit: BoxFit.fill,
                              width: 120,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/11.png',
                              fit: BoxFit.fill,
                              width: 120,
                            ),
                            Image.asset(
                              'assets/images/11.png',
                              fit: BoxFit.fill,
                              width: 120,
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
               Row(
                 children: [
                   _widgetOptions.elementAt(_selectedIndex),
                 ],
               ),
            ],
          ),
        ),

      ),

    //  -----------------------------------------------------------------------
    //  Reference https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html
    //  https://medium.com/flutter/getting-to-the-bottom-of-navigation-in-flutter-b3e440b9386
    //  bottom Navigation Bar

      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    //  -----------------------------------------------------------------------
    );

  //  Drawer ------------------------------------------------------------------


  }
}
