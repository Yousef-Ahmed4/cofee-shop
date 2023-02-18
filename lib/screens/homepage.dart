import 'package:drinks_coffee_shop/data/data.dart';
import 'package:drinks_coffee_shop/screens/itemscreen.dart';
import 'package:drinks_coffee_shop/screens/shoppingcartpage.dart';
import 'package:drinks_coffee_shop/widget/cartwidget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 1) {
        Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) {
          return CartPage();
        }));
      } else if (index == 2) {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return ItemScreen();
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
        children: [
          ListTile(
            title: Text(
              'Venus',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            trailing: IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext context) {
                  return CartPage();
                }));
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 8, 30, 8),
            child: TextField(
              decoration: InputDecoration(
                  // focusedBorder: ,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  hintText: 'search ',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            height: 50,
            width: 100,
            child: ListView.builder(
                itemCount: data.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: InkWell(
                      onTap: () {},
                      child: Text(data[index],
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  );
                }),
          ),
          Container(
            height: 120,
            child: ListView.builder(
                itemCount: dataimage.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return cartWidjet(data[index], dataimage[index]);
                }),
          ),
          SizedBox(
            height: 30,
          ),
          Text('    will buy',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)),
          Container(
            height: MediaQuery.of(context).size.height / 2.5,
            child: ListView.builder(
                itemCount: dataimage2.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Card(
                        elevation: 5,
                        margin: EdgeInsets.all(0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(20)),
                            height: 75.0,
                            width: 75,
                            child: Image.asset('assets/images/image3.png'))),
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
                  );
                }),
          ),
        ],
      ),
    );
  }
}
