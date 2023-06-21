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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' List View'),
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

    var arrNames = ['Shruti', 'Anas' , 'Palki' , 'Nikhil' , 'Varun' , 'Avinash' , 'Avika' , 'Aashish' , 'Rahul' ];

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:
       ListView.separated(itemBuilder: (context, index) {
         return Row(
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text( arrNames[index], style: TextStyle(fontSize:21,fontWeight: FontWeight.w500),),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text( arrNames[index], style: TextStyle(fontSize:21,fontWeight: FontWeight.w500),),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text( arrNames[index], style: TextStyle(fontSize:21,fontWeight: FontWeight.w500),),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text( arrNames[index], style: TextStyle(fontSize:21,fontWeight: FontWeight.w500),),
             )
           ],
         );
       },
       itemCount: arrNames.length,
         separatorBuilder: (context , index){
         return Divider(height: 50,thickness: 2,);
         },
       )
    );
  }
}
