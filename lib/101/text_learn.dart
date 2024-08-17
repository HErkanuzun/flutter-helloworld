import 'package:flutter/material.dart';


class TextLearnView extends StatelessWidget{
  const TextLearnView({Key? key, this.userName}) : super(key: key);
  final String name = 'Veli';
  final String? userName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          Text(
          'Welcome $name ${name.length}' ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,

          style: const TextStyle(
            wordSpacing: 2,
            letterSpacing: 2,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.red
          ),

          ),
          Text(
          'Welcome $name ${name.length}' ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,

          style: ProjectStyles.welcomeStyle,

          ),
          Text(
          'Welcome $name ${name.length}' ,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(color:Colors.red),

          ),
          Text(userName ?? ''),
          ],
        )),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
            wordSpacing: 2,
            letterSpacing: 2,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.red
  );
}