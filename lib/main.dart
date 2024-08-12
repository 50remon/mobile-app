import 'package:flutter/material.dart';
import 'package:recipe_app/Seconed%20page.dart';
import 'package:recipe_app/recipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.grey,
          secondary: Colors.black,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Text('الشيف سرسور'),
        actions: [Icon(Icons.search)],
      ),
      body: SafeArea(
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(
              right: 10,
              left: 15,
              bottom: 10,
            ),
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>secondpage(recipe: Recipe.samples[index])));
              },
              child: Card(
                elevation: 30,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Image(
                        image: AssetImage(
                          Recipe.samples[index].image,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(Recipe.samples[index].name),
                    ],
                  ),
                ),
              ),
            ),
          ),
          itemCount: Recipe.samples.length,
        ),
      ),
    );
  }
}
