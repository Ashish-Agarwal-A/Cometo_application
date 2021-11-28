import 'package:cometo_app/DetailsScreen.dart';
import 'package:flutter/material.dart';
import 'package:cometo_app/products.dart';
import 'package:flutter/cupertino.dart';


class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
   Key? key,
    required this.product, required this.press,

  })
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async{
        Navigator.push(context, MaterialPageRoute(builder: (context)=>  DetailsScreen(product: product)));
      },
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Container(
              padding: EdgeInsets.all(23.0),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,

                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(product.image,height: 270,width: 270,),

            ),
            ),

            Padding(padding: const EdgeInsets.all(5.0),
              child: Text(product.title,
                style: TextStyle(color: Colors.black87,fontWeight: FontWeight.bold),
              ),
            ),

          ],
        ),
    );

  }
}



