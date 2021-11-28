import 'dart:math';

import 'package:cometo_app/products.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'VideoScreen.dart';

var videoList = [
{
'name' :'Hostel - Stand Up Comedy ft. Anubhav Singh Bassi',
'videourl': 'https://www.youtube.com/watch?v=Tqsz6fjvhZM',
'thumbnail': 'https://i.ytimg.com/vi/Tqsz6fjvhZM/maxresdefault.jpg'
},
  {
    'name': 'Roommate - Stand Up Comedy Ft. Anubhav Singh Bassi',
    'videourl': 'https://www.youtube.com/watch?v=qkxuFKqJXWY',
    'thumbnail': 'https://i.ytimg.com/vi/qkxuFKqJXWY/maxresdefault.jpg'
  }
];


class Body extends StatefulWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height*0.3),
                  height: 500,
                  decoration: BoxDecoration(color: Color(0xFFF06292),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                ),
                tittle(product: widget.product,),

              ],
            ),

          ),

        ],
      ),
    );
    return Container();
  }
}
class tittle extends StatefulWidget {
  final Product product;
  const tittle({Key? key, required this.product}) : super(key: key);


  @override
  _tittleState createState() => _tittleState();
}

class _tittleState extends State<tittle> {

  @override
  Widget build(BuildContext context) {

    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(widget.product.line,textAlign: TextAlign.right,
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(height: 5,),
          Text( widget.product.title,
            style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black, fontSize: 20),
          ),
          Row(
            children: <Widget>[
              RichText(text: TextSpan(
                  children: [
                    TextSpan(
                        text: "Followers\n", style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black,)),
                    TextSpan(
                      text: widget.product.followers,
                      style: Theme.of(context)
                          .textTheme.headline6?.copyWith(color: Colors.black87,fontWeight: FontWeight.bold),
                    )
                  ]
              )),
              SizedBox(width: 100.0,),
              Expanded(child: Image.asset(widget.product.image,
                fit: BoxFit.fill,),
               ),

            ],
          ),
          Text(widget.product.description,style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.black),),
          RaisedButton(child: Text('Hostel - Stand Up Comedy ft. Anubhav Singh Bassi'),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  VideoScreen('Hostel - Stand Up Comedy ft. Anubhav Singh Bassi',' http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4')));
            } ,
          ),
          // ListView(
          //
          //    children: videoList
          //        .map((e) => GestureDetector(
          //      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => VideoScreen('Hostel - Stand Up Comedy ft. Anubhav Singh Bassi','https://www.youtube.com/watch?v=Tqsz6fjvhZM'))),
          //      child: Image.network('https://i.ytimg.com/vi/Tqsz6fjvhZM/maxresdefault.jpg'),)).toList(),
          //  )
           ],
          //
          // ),
      ), );

  }
}




