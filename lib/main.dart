import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Flutter Workshop"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin:const EdgeInsets.all(24),
             child: Column(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children:[
                         Icon(
                           Icons.person,
                           size: 80,
                         ),
                         Column(
                           children: [
                             Text("Maha AlGhamdi",style: TextStyle(fontSize: 25)),
                             Text("Software Engineer", style: TextStyle(fontSize: 15,color: Colors.blue))
                           ],
                         )
                       ]
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,// this to add space between widgets, try to explore it
                       children:[
                   Row(
                     children: [
                       Icon(
                         Icons.school,
                         size: 20,
                         color:Colors.blue,
                       ),

                       Padding(padding: EdgeInsets.only(left:10,top:0,right:0,bottom:0), //this can be replaced with SizeBox, implemented below in the next row
                       child:Text("2023"),
                 )
                     ],
                   ),
                         Row(
                           children: [
                             Icon(
                               Icons.web_outlined,
                               size: 20,
                               color:Colors.blue,
                             ),
                             SizedBox(
                               width: 5,
                             ), // can be replaced with padding as shown above
                             Text("@M404h")
                           ],
                         ),
                         Row(
                           children: [
                             Icon(
                               Icons.phone,
                               size: 20,
                               color:Colors.blue,
                             ),
                             SizedBox(
                               width: 5,
                             ),
                             Text("966 55 000 0000")
                           ],
                         ),

                       ]
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children:[Text("Flutter Workshop - 16th Feb 2023",style: TextStyle(fontSize: 15, color:Colors.blueAccent),)]
                   ),
                 ),

               ],
             )
            ),
          ],
        )
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
