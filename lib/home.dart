import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:textform/name_provider.dart';

final textcontroller = TextEditingController();
final text2controller = TextEditingController();

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Printer App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Consumer<dbname>(
            //   builder: (context, textProvider, child) {
            //     return Text(textProvider.combinedText);
            //   },
            // ),

            TextField(
                decoration: const InputDecoration(
                    hintText: 'Text...', border: OutlineInputBorder()),
                controller: textcontroller),
                TextField(
                decoration: const InputDecoration(
                    hintText: 'Text...', border: OutlineInputBorder()),
                controller: text2controller),

            ElevatedButton(
              onPressed: () {
                Provider.of<dbname>(context,listen: false).updateText1(textcontroller.text);
                Provider.of<dbname>(context, listen: false)
                    .updateText2(text2controller.text);
              },
              child: Consumer<dbname>(builder:(context, value, child) {
                return  Text(value.combinedText);
              },
            ),)

          ]
        ),
      ),
    );
  }
}
