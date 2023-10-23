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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar:AppBar(title: Text("Hello World"), backgroundColor: Colors.red,),
      body:SingleChildScrollView(
        child: Center(child: Column(
          children: [
            Text("Hello World 2", style: TextStyle(fontSize: 32, color: Colors.blue)),
            SizedBox(height: 8,),
            Image.network("https://a.cdn-hotels.com/gdcs/production99/d1417/4da30a77-ecb2-4ead-a771-e61fac2a73dd.jpg"),
            SizedBox(height: 8,),
            Text("This is my first app", style: TextStyle(fontSize: 28, color: Colors.green)),
            SizedBox(height: 8,),
            Text("I hope you enjoy it!", style: TextStyle(fontSize: 18, color: Colors.purple),),
            SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("This is left"),
                SizedBox(width: 16,),
                Text("This is right")
              ],
            ),
            TextButton(onPressed: (){
              final snackBar1 = SnackBar(content: Text("Is this snackbar?"),
              action: SnackBarAction(label: "Yes", onPressed: (){print("Okay");},),);
              ScaffoldMessenger.of(context).showSnackBar(snackBar1);
            }, child: Text("Press me!"))
          ],
        )),
      )
    );
  }
}
