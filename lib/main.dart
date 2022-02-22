import 'package:flutter/material.dart';

/*
void main() {
  runApp(const MyActualApp());
}

class MyActualApp extends StatelessWidget {
  const MyActualApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(color: Colors.white),
            child: SizedBox(
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Text('zfnhzfd'),
              ),
            ),
          ),
          Expanded(
            // SizedBox(
            // height: MediaQuery.of(context).size.height - 112,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    top: 20,
                    right: 16,
                    bottom: 20,
                  ),
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: SizedBox(
                      height: 100,
                      width: MediaQuery.of(context).size.width,
                    ),
                  ),
                ),
                for (var i = 0; i < 100; i++)
                  Text(
                    'aaa',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
              ],
            ),
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: SizedBox(
              height: 56,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.ac_unit,
                          color: Colors.black,
                        ),
                        Text('AAA'),
                      ],
                    ),
                    onTap: () {
                      print('aaaa');
                    },
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.access_alarm,
                          color: Colors.black,
                        ),
                        Text('AAA'),
                      ],
                    ),
                    onTap: () {
                      print('bbb');
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
*/

void main() {
  runApp(const MyActualApp());
}

class MyActualApp extends StatelessWidget {
  const MyActualApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.black,
            title: Row(
              children: [
                Text(
                  'Where wolud you like to eat',
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
        drawer: Drawer(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                color: Colors.white,
                child: SizedBox(
                    height: 50,
                    child: AppBar(
                      backgroundColor: Colors.white,
                      bottom: TabBar(isScrollable: true, tabs: [
                        Tab(
                          child: Text('Menu',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Tab(
                          child: Text('Burger',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Tab(
                          child: Text('Pizza',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Tab(
                          child: Text('Hot Dog',
                              style: TextStyle(color: Colors.black)),
                        ),
                        Tab(
                          child: Text('Fries',
                              style: TextStyle(color: Colors.black)),
                        ),
                      ]),
                    )),
              ),
            ),
            Expanded(
                child: TabBarView(children: [
              Container(
                  //start first container for menu
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Stack(
                          alignment: AlignmentDirectional.centerStart,
                          children: [
                            Container(
                              color: Colors.white,
                              width: 400,
                              height: 150,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.white),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const SecondRoute()),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'CheeseBurger\n',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text('\$10.00',
                                        style: TextStyle(color: Colors.black)),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.red),
                                          child: SizedBox(
                                            height: 35,
                                            width: 80,
                                            child: Padding(
                                              padding: const EdgeInsets.all(10),
                                              child: Text(
                                                'data',
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: DecoratedBox(
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                                child: SizedBox(
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )), //end first container
              Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 400,
                          height: 150,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SecondRoute()),
                              );
                            },
                            child: Text('go to forward'),
                          ),
                        ),
                      ],
                    ),
                  )),
              Container(
                  color: Colors.red,
                  child: Center(child: Text('first widget'))),
              Container(
                  color: Colors.red,
                  child: Center(child: Text('first widget'))),
              Container(
                  color: Colors.red,
                  child: Center(child: Text('first widget'))),
            ])),
            //footer
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: SizedBox(
                height: 56,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.ac_unit,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.abc_sharp,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.abc_sharp,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.abc_sharp,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('second page')),
        body: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('go back'),
        )));
  }
}
