
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  @override
  void initState() {
    super.initState();
  }
  var counter=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text('counter',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.bold),),
    ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),color: Colors.green),
                child: TextButton(onPressed: (){
                  setState(() {
                    counter--;
                    print(counter);
                  });
                },
                child: Text(
                  'minus',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.1),
                ),
          ),
              ),
            ),
            Text('$counter',style: TextStyle(
                fontSize: 50,color: Colors.black,fontWeight: FontWeight.bold),
            ),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),color: Colors.green),
                child: TextButton(onPressed: (){
                  setState(() {
                    counter++;
                    print(counter);
                  });
                },
                child: Text(
                  'plus',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.1),
                ),
          ),
              ),
            ),
          ],
        ),
      ),

    );
  }
}
