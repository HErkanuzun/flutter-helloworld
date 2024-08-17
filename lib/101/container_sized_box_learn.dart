import 'package:flutter/material.dart';

class ContainerSizedBoxLearn extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar : AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 200,
            height: 200,
            child: Text('a' * 500),
          ),
          SizedBox.shrink(),
          SizedBox.square(
            dimension: 50,
            child: Text('b'*40),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: const BoxConstraints(maxWidth: 150,minWidth: 100, maxHeight:100),
            child: Text('cc'*100),
            padding: EdgeInsets.all(5),
            margin: const EdgeInsets.all(10),

            decoration: BoxDecoration(
              // color: Colors.red,
              gradient: LinearGradient(colors: [Colors.red,Colors.black]),
              boxShadow: const [BoxShadow(color: Colors.green,
              offset: Offset(0.1, 1),
              blurRadius: 12,
              )],

              border: Border.all(width: 10,color: Colors.white12)
            ),
          )
        ],
      ),
  );
  }
}