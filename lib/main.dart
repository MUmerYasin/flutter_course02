import 'package:flutter/material.dart';
import 'package:flutter_course02/nested_row_column.dart';

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
      // home: const MyHomePage(title: 'Flutter Course'),
      home: const MyHomePage2(title: 'Flutter Course'),
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
        toolbarHeight: 80.0,
        title: Center(
            child: Text(
          widget.title,
          textAlign: TextAlign.center,
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
            // reference =>
            //   https://flutter.dev/docs/development/ui/layout
            // https://api.flutter.dev/flutter/rendering/CrossAxisAlignment-class.html

            // mainAxisSize: MainAxisSize.min, //column shrinks to fit the children. Reduce/Less All distance  between widgets
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //divides the free space (all side )evenly between, before, and after each image.
            //

            crossAxisAlignment: CrossAxisAlignment.start,
            // Star/Top and left side widgets
            // crossAxisAlignment: CrossAxisAlignment.center, // center all widgets
            // crossAxisAlignment: CrossAxisAlignment.end, //Place the children as close to the end of the cross axis as possible. // right side  all widgets and end
            // crossAxisAlignment: CrossAxisAlignment.stretch, // This causes the constraints passed to the children to be tight in the cross axis.
            // crossAxisAlignment: CrossAxisAlignment.baseline, //Place the children along the cross axis such that their baselines match.
            // crossAxisAlignment: CrossAxisAlignment.values, //

            children: [
              Stack(
                children: <Widget>[
                  Positioned(
                    // top: 0.0,
                    // width: 300,
                    // height: height * .5,
                    // decoration: BoxDecoration
                    // assets/images/11.png
                    child:
                        Image.asset('assets/images/11.png', fit: BoxFit.fill),
                    // color: Colors.red,
                  ),

                  Positioned(
                    bottom: 0.0,
                    left: 10.0,
                    // child: Container(
                    child: ElevatedButton(
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
                    child: Text(
                      'M. Umer Yasin',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                          color: Colors.red),
                    ),
                  ),
                ],
              ),

              Container(
                  color: Colors.transparent,
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                      text: "Don't have account ? ",
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Sign up',
                            style: TextStyle(color: Colors.blue)),
                        // TextSpan(text: ' world!'),
                      ],
                    ),
                  )),

              // Expanded(
              // child:
              Container(
                margin: const EdgeInsets.all(10.0),

                color: Colors.transparent,
                // reference  https://api.flutter.dev/flutter/widgets/Image-class.html

                // child: Image.network('https://png.pngtree.com/png-clipart/20190611/original/pngtree-golden-retro-background-texture-texture-of-high-resolution-images-png-image_2376770.jpg'),
                // child: Image.network('https://png.pngtree.com/thumb_back/fh260/background/20201019/pngtree-awesome-high-quality-luxury-mandala-background-image_423797.jpg'),
                // child: Image.network('https://www.codegrepper.com/codeimages/python-resize-image-keep-aspect-ratio.png'),

                child: Image.network(
                    'https://www.sarthaks.com/?qa=blob&qa_blobid=12060950694091394414'),
              ),

              Container(
                margin: const EdgeInsets.all(10.0),
                color: Colors.transparent,
                child: Image.network(
                    'https://png.pngtree.com/png-clipart/20190611/original/pngtree-golden-retro-background-texture-texture-of-high-resolution-images-png-image_2376770.jpg'),
                // child: Image.network('https://s27389.pcdn.co/wp-content/uploads/2018/10/AI-education-675x440.jpeg'),
              ),
            ]),
      ),
    );
  }
}
