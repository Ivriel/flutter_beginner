import 'package:flutter/material.dart';

class ScrollviewApp extends StatelessWidget {
  const ScrollviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Scrollview App',
          style: TextStyle(
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Center(
            child: Row(
              children: [
              Container(
                width: 200,
                height: 200,
                color: Colors.red[900],
                child: Center(
                  child: Text(
                    'Container 1',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
               Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
               Container(
                width: 150,
                height: 150,
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Container 2',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                child: Center(
                  child: Text(
                    'Container 3',
                    style: TextStyle(
                        color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
                    ),
          ),
      )
      )
    );
  }
}