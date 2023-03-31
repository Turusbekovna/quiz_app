import 'package:flutter/material.dart';

import 'package:quiz_app/pages/second_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Кыргыз тили')),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          )),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Center(
                child: Text('Биринчи тест',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w300,
                        color: Color.fromARGB(255, 7, 235, 26))),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              InkWell(
                splashColor: Colors.yellowAccent,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(),
                    ),
                  );
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
                      'Башта',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ]),
          ],
          //  child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.yellow,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Башкы бет',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_library),
              label: 'Китепкана',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'Жетишкендиктер',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Издөө',
            ),
          ],
          //   currentIndex: _selectedIndex,
          //   selectedItemColor: Colors.amber[800],
          //   onTap: _onItemTapped,
        ),
      ),
    );
  }
}
