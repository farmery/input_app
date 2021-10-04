import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  late TextEditingController textEditingController;

  String output = '';

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 64),
                Text(
                  'Enter any Text',
                  style: TextStyle(fontSize: 22),
                ),
                SizedBox(height: 24),

                //full name
                TextField(
                  controller: textEditingController,
                  decoration: InputDecoration(
                    labelText: 'Enter a text here',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),

                SizedBox(height: 16),
                Align(
                    alignment: Alignment.centerRight,
                    child: CupertinoButton.filled(
                        borderRadius: BorderRadius.circular(30),
                        child: Text('Submit'),
                        onPressed: () {
                          setState(() {
                            output = textEditingController.value.text;
                          });
                        })),

                Text(output, style: TextStyle(fontSize: 18))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
