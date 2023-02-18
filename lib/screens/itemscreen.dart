import 'package:drinks_coffee_shop/widget/cartwidget.dart';
import 'package:flutter/material.dart';

class ItemScreen extends StatefulWidget {
  @override
  _ItemScreenState createState() => _ItemScreenState();
}

class _ItemScreenState extends State<ItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          backgroundColor: Color(0xffa0c743),
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffa0c743),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
          ),
          bottomNavigationBar: BottomAppBar(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 3),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.note_add_outlined,
                    size: 30,
                  ),
                  Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Container(
                        width: 200,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: Color(0xffc1f100)),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35, 7, 10, 2),
                          child: Text(
                            'purchessed',
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                        ),
                      ))
                ],
              ),
            ),
          ),
          body: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 45, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Green tea',
                        style: TextStyle(fontSize: 33, color: Colors.white),
                      ),
                      Text('sdfjkh\ask',
                          style: TextStyle(fontSize: 15, color: Colors.white)),
                      SizedBox(
                        height: 25,
                      ),
                      Text('25',
                          style: TextStyle(fontSize: 70, color: Colors.white))
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 40, 40, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Discription ',
                          style: TextStyle(fontSize: 30, color: Colors.black)),
                      Text(
                          '\nsldhfksdljhfklsafjasdlfhasj;fhlsdj/nahgsdjkasfjlkasfksdfj/n/n/n asuofjldashfjasaslnfkasf;a\n',
                          style: TextStyle(fontSize: 15, color: Colors.black)),
                      Text('*  *  *  *  *',
                          style: TextStyle(
                              fontSize: 40, color: Color(0xffa0c743))),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          cardWidjet(Icon(Icons.local_drink_sharp, size: 25),
                              '500 le'),
                          SizedBox(
                            width: 30,
                          ),
                          cardWidjet(Icon(Icons.ac_unit, size: 25), 'ice'),
                          SizedBox(
                            width: 30,
                          ),
                          cardWidjet(Icon(Icons.add, size: 25), 'add'),
                          SizedBox(
                            width: 30,
                          ),
                        ],
                      ),
                      Text('\nService',
                          style: TextStyle(fontSize: 25, color: Colors.black)),
                      Text('ahskjasldhfskldfasikfshadkdn \nsifjdnsdjv',
                          style: TextStyle(fontSize: 20, color: Colors.black))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: /*MediaQuery.of(context).padding*/
              const EdgeInsets.fromLTRB(180, 150, 0, 0),
          child: Image.asset('assets/images/image3.png'),
        )
      ],
    );
  }
}
