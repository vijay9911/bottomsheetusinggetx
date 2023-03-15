import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("this is BottomSheet"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                Get.bottomSheet(
                    Container(
                     child: Wrap(
                       children:  [
                         ListTile(
                           leading: const Icon(Icons.wb_sunny_outlined),
                           title: const Text("Light theme"),
                           onTap: ()=> {Get.changeTheme(ThemeData.light())},
                         ),
                         ListTile(
                           leading: const Icon(Icons.wb_sunny),
                           title: const Text("Dark theme"),

                             onTap: ()=> {Get.changeTheme(ThemeData.dark())},

                         )
                       ],
                     ),
                ));
              },
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.orange
                  ),
                  child: const Text("Change theme", style: TextStyle(
                      color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w700
                  ),
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}
