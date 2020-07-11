import 'package:flutter/material.dart';
import 'package:flutterecomm/components/Products/products.dart';
import 'package:flutterecomm/main.dart';
class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: InkWell(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>new HomePage() ));},
            child: Text('FashApp')),
        backgroundColor: Colors.brown,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.search),
              color: Colors.white70,
              onPressed: () {}),

        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white30,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.brown,
                        fontSize: 18.0),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "\$${widget.product_detail_old_price},old price",
                          style: TextStyle(
                              color: Colors.purple,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                          child: new Text(
                              "\$${widget.product_detail_new_price},after discount",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.green,
                                decoration: TextDecoration.lineThrough,
                              )))
                    ],
                  ),
                ),
              ),
            ),
          ),
          //=================the first button===============

          Row(
            children: <Widget>[
              //the size button============
              Expanded(
                  child: MaterialButton(
                onPressed: () {
                  showDialog(context: context,builder: (context){
                    return new AlertDialog(
                      title:new Text("size") ,
                      content: new Text("Choose the Size"),
                      actions: <Widget>[
                        new MaterialButton(onPressed: (){
                          Navigator.of(context).pop(context);
                        },
                        child: new Text("close"),)
                      ],
                    );
                  });
                },
                color: Colors.white,
                textColor: Colors.grey,
                    elevation: 0.2,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Text("Size"),
                    ),
                    Expanded(child: new Icon(Icons.arrow_drop_down))
                  ],
                ),
              )),
              Expanded(
                  child: MaterialButton(onPressed: () {
                    showDialog(context: context,builder: (context){
                      return new AlertDialog(
                        title:new Text("Colors") ,
                        content: new Text("Choose the color"),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          },
                            child: new Text("close"),)
                        ],
                      );
                    });
                  },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Color"),
                        ),
                        Expanded(child: new Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )),Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      showDialog(context: context,builder: (context){
                        return new AlertDialog(
                          title:new Text("Qty") ,
                          content: new Text("Choose the qty"),
                          actions: <Widget>[
                            new MaterialButton(onPressed: (){
                              Navigator.of(context).pop(context);
                            },
                              child: new Text("close"),)
                          ],
                        );
                      });
                    },
                    color: Colors.white,
                    textColor: Colors.grey,
                    elevation: 0.2,
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text("Qty"),
                        ),
                        Expanded(child: new Icon(Icons.arrow_drop_down))
                      ],
                    ),
                  )),
            ],
          ),
          //=================the second button===============

          Row(
            children: <Widget>[
              //the size button============
              Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.red,
                    textColor: Colors.white30,
                    elevation: 0.2,
                    child:new Text("Buy now")
                  ),),
              new IconButton(icon: Icon(Icons.add_shopping_cart),color: Colors.pink, onPressed: (){}),
              new IconButton(icon: Icon(Icons.favorite_border),color: Colors.pink, onPressed: (){}),
            ],
          ),Divider(color: Colors.deepPurple,),
          new ListTile(
            title: new Text("Product Details"),
            subtitle: new Text("lkjvjksdhkljlkjd dskljf klshjghsjkdlgahgjklh jakldhgkjlah jklh kjalgh jkahgjk hajkg hkjah gkjlha kjlghajk hlagh kjfha jkhfajh dkjgh asfjafkhdfgjioargks"),
          ),
          Divider(),
        new Row(
        children: <Widget>[
        Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
    child: new Text("Product name",style: TextStyle(color: Colors.grey),
    ),),
    Padding(padding: EdgeInsets.all(5.0),
    child: new Text(widget.product_detail_name),)
    ],
    ),
    new Row(
    children: <Widget>[
    Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
    child: new Text("Product brand",style: TextStyle(color: Colors.grey),
    ),),
    Padding(padding: EdgeInsets.all(5.0),
    child: new Text("Brand X"),)
    ],
    ),
    new Row(
    children: <Widget>[
    Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
    child: new Text("Product condition",style: TextStyle(color: Colors.grey),
    ),),
    Padding(padding: EdgeInsets.all(5.0),
    child: new Text("NEW"),)
    ],
    ),Divider(),
          Padding(
              padding:const EdgeInsets.all(8.0),child: Text("Similar Products")),
          //SIMILAR products section
          Container(height: 360.0,
          child: Similar_products(),)
        ],
      ),
    );
  }
}
class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
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
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}
class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod(
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
