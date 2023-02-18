import 'package:drinks_coffee_shop/data/data.dart';
import 'package:drinks_coffee_shop/screens/homepage.dart';
import 'package:drinks_coffee_shop/widget/cartwidget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int _selectedIndex = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return HomePage();
        }));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'notifications',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Text('  shopping cart',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
          Text('   data', style: TextStyle(fontSize: 25)),
          Container(
            margin: const EdgeInsets.fromLTRB(25, 30, 0, 25),
            height: MediaQuery.of(context).size.height / 2,
            child: ListView.builder(
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                    height: 100,
                    child: Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(10)),
                            height: 95.0,
                            width: 95,
                            child: Image.asset('assets/images/image3.png')),
                        Column(
                          children: [
                            Title(
                              color: Colors.black,
                              child: Text(
                                ' data',
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Text('data', style: TextStyle(fontSize: 20)),
                            SizedBox(
                              height: 15,
                            ),
                            Text('v12',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.amber))
                          ],
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(210, 0, 0, 20),
                            child: Column(
                              children: [
                                InkWell(
                                  onTap: () {},
                                  child: Text('+',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('1',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  height: 5,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text('-',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ))
                      ],
                    )
                    /*ListTile(
                    leading: Container(
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(10)),
                        height: 120.0,
                        width: 95,
                        child: Image.asset('assets/images/image3.png')),
                    title: Text(data2[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text(data2[index],
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 13.0,
                        )),
                    trailing: Text('v 24',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold)),
                  ),*/
                    );
              },
            ),
          ),
          Container(
            height: 60,
            margin: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width / 13,
                MediaQuery.of(context).size.height / 13,
                MediaQuery.of(context).size.width / 13,
                MediaQuery.of(context).size.height / 13),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '      total v 110',
                  style: TextStyle(fontSize: 18),
                ),
                InkWell(
                  child: Text(
                    'Next      ',
                    style: TextStyle(fontSize: 18),
                  ),
                  onTap: () {},
                ),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: Colors.amber),
          )
        ],
      ),
    );
  }
}
