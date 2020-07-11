import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
//myimports
import 'package:flutterecomm/components/horizontal_listview.dart';
import 'package:flutterecomm/components/Products/products.dart';
import 'package:flutterecomm/components/pages/cart.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
          images: [
          AssetImage('images/w3.jpeg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/c1.jpg'),
          AssetImage('images/w4.jpeg'),
      ],
      autoplay: true,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 900),
      dotSize: 4.0,dotColor: Colors.teal,
      indicatorBgPadding: 3.0,overlayShadowColors: Colors.white54,
      dotBgColor: Colors.transparent,),
    );
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: Text('FashApp'),
        backgroundColor: Colors.brown,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search),
              color: Colors.white70,
              onPressed: () {}),
          new IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Colors.white70,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //header
            new UserAccountsDrawerHeader(
              accountName: Text('Anmol'),
              accountEmail: Text('anmoleight370@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.brown),
            ),
            //body

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(Icons.home,color: Colors.brown,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(Icons.person,color: Colors.brown,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket,color: Colors.brown,),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>new Cart( )));
              },
              child: ListTile(
                title: Text('Shopping Cart'),
                leading: Icon(Icons.shopping_cart,color: Colors.brown,),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favourites"),
                leading: Icon(Icons.favorite,color: Colors.brown,),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.orange),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.help,
                  color: Colors.purple,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          image_carousel,
          //paddingwidget
          new Padding(padding: const EdgeInsets.all(4.0),
          child: Container(alignment: Alignment.centerLeft
              ,child: new Text('Categories')),),
          //horizontal list begins here
          HorizontalList(),
          new Padding(padding: const EdgeInsets.all(8.0),
            child: Container(
            alignment: Alignment.centerLeft,
            child: new Text('New Products')),),
          //grid view
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
