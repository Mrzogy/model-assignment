import 'package:flutter/material.dart';
import 'package:model_assignment/model/my_model.dart';
import 'package:model_assignment/utility/extinsion.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Data>? listdata = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        left: false,
        right: false,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Groceries"),
            leading: const Icon(Icons.heart_broken),
          ),
          body: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listdata!
                  .map(
                    (todo) => Container(
                      width: context.gitwidh(50),
                      height: 500,
                      color: const Color(0xff537188),
                      margin: const EdgeInsets.symmetric(vertical: 8),
                      //color: Colors.yellowAccent,
                      child: SingleChildScrollView(
                        // scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 200),
                              child: Text(
                                todo.todo,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            if (todo.completed == true)
                              const Icon(
                                Icons.check,
                                color: Colors.green,
                                size: 50,
                              )
                            else
                              const Icon(
                                Icons.clear,
                                color: Colors.red,
                                size: 50,
                              )
                          ],
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          )),
        ),
      ),
    );
  }
}
