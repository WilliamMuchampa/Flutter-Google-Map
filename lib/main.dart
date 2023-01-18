// ignore_for_file: prefer_const_constructors, unnecessary_new, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const appName = 'Chelstone Utilities';
    const u1 = ' Water Bills ';
    const u2 = 'Electricity Bills';
    const u3 = 'Gargabage Payments';
    const u4 = 'TAX Services';
    const u5 = 'DSTV/GOTV Payments';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        // brightness: Brightness.dark,
        primaryColor: Color.fromARGB(0, 178, 164, 212),
        accentColor: Colors.grey[600],
        fontFamily: 'Georgia',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(
            fontSize: 20.0,
          ),
          headline5: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
      ),
      home: HomePage(
        header: appName,
        utility1: u1,
        utility2: u2,
        utility3: u3,
        utility4: u4,
        utility5: u5,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final String header;
  final String utility1;
  final String utility2;
  final String utility3;
  final String utility4;
  final String utility5;

  const HomePage({
    Key? key,
    required this.header,
    required this.utility1,
    required this.utility2,
    required this.utility3,
    required this.utility4,
    required this.utility5,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: duplicate_ignore
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0.1,
        title: Text(header),
      ),

      // ignore: unnecessary_new
      body: new ListView(
        children: [
          Column(
            children: <Widget>[
              // ignore: unnecessary_new
              new Container(
                padding: EdgeInsets.only(top: 16),
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 5),
                  // ignore: unnecessary_new
                  child: new Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Choose the Service ...',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ),

              // ignore: avoid_unnecessary_containers, unnecessary_new
              new Container(
                padding: EdgeInsets.fromLTRB(10, 20, 0, 0),
                child: Column(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: <Widget>[
                    Container(
                      color: Color.fromARGB(255, 239, 241, 241),
                      child: MaterialButton(
                        onPressed: (() {
                          Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: ((context) => new ElectricityPage(
                                    apptitle: utility2,
                                  )),
                            ),
                          );
                        }),
                        child: ListTile(
                          title: Text(
                            utility2,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),

                    Divider(
                      color: Colors.white,
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      child: MaterialButton(
                        onPressed: (() {
                          Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (context) =>
                                  new WaterPage(apptitle: utility1),
                            ),
                          );
                        }),
                        child: ListTile(
                          title: Text(
                            utility1,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(
                      color: Color.fromARGB(255, 239, 241, 241),
                      child: MaterialButton(
                        onPressed: (() {
                          Navigator.of(context).push(new MaterialPageRoute(
                              builder: (context) =>
                                  new GarbagePage(apptitle: utility3)));
                        }),
                        child: ListTile(
                          title: Text(
                            utility3,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: (() {
                          Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (context) => TaxPage(
                                apptitle: utility4,
                              ),
                            ),
                          );
                        }),
                        child: ListTile(
                          title: Text(
                            utility4,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                    ),
                    Container(
                      color: Color.fromARGB(255, 239, 241, 241),
                      child: MaterialButton(
                        onPressed: (() {
                          Navigator.of(context).push(
                            new MaterialPageRoute(
                              builder: (context) =>
                                  new DstvPage(apptitle: utility5),
                            ),
                          );
                        }),
                        child: ListTile(
                          title: Text(
                            utility5,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
