import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quiz_app/data/quiz_data.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  bool buttubu = false;
  void userdinJoobu(bool userdinJoobu) {
    setState(() {});
    final jooptor = quizData.jooptuAlypKel();
    if (userdinJoobu == jooptor) {
      iconcalar.add(Icon(
        Icons.check,
        size: 50,
        color: Colors.green,
      ));
    } else if (userdinJoobu != jooptor) {
      iconcalar.add(Icon(
        Icons.close,
        size: 50,
        color: Colors.red,
      ));
    }
    quizData.otkoz();
    if (quizData.suroonuAlypKel() == '') {
      buttubu = true;
    }
    setState(() {});
  }

  List<Icon> iconcalar = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Биринчи тест'),
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buttubu == true
                ? AlertDialog(
                    title: Text('Аягы'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            buttubu = false;
                            iconcalar = [];
                            quizData.kairabashta();
                            setState(() {});
                          },
                          child: Text('Кайра башта'))
                    ],
                  )
                : Text(
                    quizData.suroonuAlypKel().toString(),
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.yellowAccent,
                  onTap: () {
                    userdinJoobu(true);
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Ооба',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                InkWell(
                  splashColor: Colors.yellow,
                  onTap: () {
                    userdinJoobu(false);
                  },
                  child: Ink(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.red,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Жок',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: iconcalar,
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 63, 4, 172),
          unselectedItemColor: Colors.yellow,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Башкы бет',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books),
              label: 'Китепкана',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Издөө',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Жетишкендиктер',
            ),
          ],
          //   currentIndex: _selectedIndex,
          //   selectedItemColor: Colors.amber[800],
          //   onTap: _onItemTapped,
        ),
      ),
    );
  }

  showAlertDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {},
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Аягы"),
      actions: [
        okButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
