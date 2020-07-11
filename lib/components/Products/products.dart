import 'package:flutter/material.dart';
import 'package:flutterecomm/components/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "Girl's Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old price": 100,
      "price": 50,
    },{
      "name": "Black dress",
      "picture": "images/products/dress2.jpeg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "hills",
      "picture": "images/products/hills1.jpeg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "hills ",
      "picture": "images/products/hills2.jpeg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "trousers",
      "picture": "images/products/pants1.jpg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "lower",
      "picture": "images/products/pants2.jpeg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "shoe",
      "picture": "images/products/shoe1.jpg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old price": 100,
      "price": 50,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt2.jpeg",
      "old price": 100,
      "price": 50,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod(
      {this.prod_name,
      this.prod_old_price,
      this.prod_picture,
      this.prod_price,
      }
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag:new Text("hero 1"), child: Material(
        child: InkWell(onTap: ()=> Navigator.of(context).push(MaterialPageRoute(builder:
            //next page ki values
        (context)=>new ProductDetails(
          product_detail_name: prod_name,product_detail_new_price: prod_price,product_detail_old_price: prod_old_price,
          product_detail_picture: prod_picture,
        ))),
        child: GridTile(
        footer:Container(
          color: Colors.white30,
          child: Row(
            children: <Widget>[
              Expanded(child: Text(prod_name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16.0),)
              ),
              Text("\$${prod_price}",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),)
            ],
          )
        ) ,
            child: Image.asset(prod_picture,
            fit: BoxFit.cover,)),),
      )),
    );
  }
}
