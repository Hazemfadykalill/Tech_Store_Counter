import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/rendering.dart';
class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  _home_PageState createState() => _home_PageState();
}

class _home_PageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'Tech_Store',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),

          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.menu))
          ],


        ),

        body:
        ListView(


          children: [
             SizedBox(width: double.infinity,
               height:double.infinity,
               child: CarouselSlider(
                    items:[
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),
                      Image.asset('images/1.jpeg',width:double.infinity ,),


                    ],

                  options: CarouselOptions(
                    autoPlay:true,
                    height: 400,

                    viewportFraction: 0.9,
                    aspectRatio: 2.0,
                    initialPage: 2,
                    enableInfiniteScroll: false,
                    reverse: false,
                    enlargeCenterPage: true,

                    autoPlayInterval: Duration(seconds: 3),
                          autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,

                    scrollDirection: Axis.horizontal,




                  ),





                ),
             ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topRight,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'ماركات',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,color:Colors.red,fontStyle:FontStyle.italic ),
              ),
            ),
            Container(
              height: 150,
              padding: EdgeInsets.all(5),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Image.asset('images/1.jpeg',),

                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      child: ListTile(
                        title:Image.asset('images/2.jpeg',width: 100,height: 100,),
                        subtitle: Text('iphon',textAlign: TextAlign.center,
                        ),

                      )

                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title:Image.asset('images/3.jpeg',width: 100,height: 100,),
                          subtitle: Text('iphon',textAlign: TextAlign.center,
                          ),

                        )

                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title:Image.asset('images/4.jpeg',width: 100,height: 100,),
                          subtitle: Text('Dell',textAlign: TextAlign.center,
                          ),

                        )

                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title:Image.asset('images/5.jpeg',width: 100,height: 100,),
                          subtitle: Text('htc',textAlign: TextAlign.center,
                          ),

                        )

                    ),
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)
                    ),
                    child: Container(
                        width: 100,
                        height: 100,
                        child: ListTile(
                          title:Image.asset('images/6.jpeg',width: 100,height: 100,),
                          subtitle: Text('HUAWEI',textAlign: TextAlign.center,
                          ),

                        )

                    ),
                  ),

                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.topRight,
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'اخر منتجات',style: TextStyle(
                  fontWeight: FontWeight.bold,fontSize: 30,color:Colors.red,fontStyle:FontStyle.italic ),
              ),
            ),
            Container(

              child: SingleChildScrollView(scrollDirection:Axis.horizontal,

                child: Row(
                  children: [
                    Image.asset('images/1.jpeg',height: 200,width: 200,),
                    SizedBox(width: 10),
                    Image.asset('images/1.jpeg',height:200,width: 200,),
                  ],
                ),
              ),
            )




          ],
        ),
      ),
    );
  }

  carouselSlider({required List<Image> items, options}) {}
}
