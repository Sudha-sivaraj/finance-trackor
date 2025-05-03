import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text('FinanceTracking'),

            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.insert_chart_outlined_sharp),
                  text: 'Summary',
                ),
                Tab(icon: Icon(Icons.ac_unit_rounded), text: 'Transaction'),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Card(
                color: Colors.greenAccent,
                elevation: 10,

                child: Column(
                  children: [
                    Card(
                      color: Colors.lime,

                      child: Text(
                        'expense',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    Text('Expenses'),
                    Text('Total Income'),
                  ],
                ),
              ),
              Icon(Icons.ac_unit_rounded),
            ],
          ),
        ),
      ),
    );
  }
}
