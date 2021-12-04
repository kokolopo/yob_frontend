import 'package:flutter/material.dart';
import 'package:yob/theme.dart';
import 'package:yob/ui/page/home_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: _addButton(),
      bottomNavigationBar: _customBottomNav(),
      body: _body(),
    );
  }

  _body() {
    switch (currentIndex) {
      case 0:
        return const HomePage();

      // case 1:
      //   return Schedule();

      // case 2:
      //   return Favorite();

      // case 3:
      //   return User();

      default:
        return const HomePage();
    }
  }

  _addButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: secondaryColor,
      child: const Icon(Icons.add),
    );
  }

  Widget _customBottomNav() {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAlias,
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 25,
              ),
            ],
          ),
          child: BottomNavigationBar(
              // backgroundColor: backgroundColor4,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              items: [
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.home,
                        size: 25,
                        color: currentIndex == 0
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10, right: 50),
                      child: Icon(
                        Icons.schedule,
                        size: 25,
                        color: currentIndex == 1
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10, left: 50),
                      child: Icon(
                        Icons.favorite,
                        size: 25,
                        color: currentIndex == 2
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    icon: Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Icon(
                        Icons.person,
                        size: 25,
                        color: currentIndex == 3
                            ? primaryColor
                            : const Color(0xff808191),
                      ),
                    ),
                    label: '')
              ]),
        ),
      ),
    );
  }
}
