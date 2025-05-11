import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Finance Trackor', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text(
            'Finance  Trackor',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.amberAccent,
            ),
          ),
          bottom: TabBar(
            tabs: [Tab(child: Text('Summary')), Tab(child: Text('Transction'))],
          ),
        ),

        body: TabBarView(
          children: [
            ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Card(
                    color: Colors.greenAccent,
                    margin: EdgeInsets.all(40),
                    elevation: 10,
                    shadowColor: Colors.blueGrey,
                    child: SizedBox(
                      height: 50,
                      width: 100,

                      child: Column(
                        children: [
                          Text('AnnualIncome', textAlign: TextAlign.center),
                          Text('5,00,000', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Card(
                    color: Colors.greenAccent,
                    margin: EdgeInsets.all(40),
                    elevation: 10,
                    shadowColor: Colors.blueGrey,
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: [
                          Text('Expenses', textAlign: TextAlign.center),
                          Text('3,00,000', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),

                  child: Card(
                    color: Colors.greenAccent,
                    margin: EdgeInsets.all(40),
                    elevation: 10,
                    shadowColor: const Color.fromRGBO(96, 125, 139, 1),
                    child: SizedBox(
                      height: 50,
                      width: 100,
                      child: Column(
                        children: [
                          Text('Total Amount', textAlign: TextAlign.center),
                          Text('2,00,000', textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Center(child: Icon(Icons.abc_rounded)),
          ],
        ),
      ),
    );
  }
}
