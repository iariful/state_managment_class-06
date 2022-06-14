import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  final String msg;
  const Homepage({Key? key,
    required this.msg,}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _count=0;
  final _nameController = TextEditingController();
  @override
  void dispose(){

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.msg),
      ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 80.0,vertical: 20),

             child: TextField(
               controller: _nameController,
               decoration: InputDecoration(
                 filled: true,
                 labelText: 'Enter your Name'
               ),
             ),
           ),
           ElevatedButton(onPressed: ()
               {
                 final name = _nameController.text;
                 print(name);
               },

               child: const Text('show name')),
           const Text('you have pushed the button'),
           Text('$_count', style: Theme.of(context).textTheme.headline1,)
         ],
       ),
     ),
      floatingActionButton: FloatingActionButton(
        onPressed: _increment,
        child: Icon(Icons.add),
      ),
    );

  }
  _increment(){
    setState(() {
      _count++;
    });
    //
    //print(_count);

  }
}

