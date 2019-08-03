import 'package:flutter/material.dart';
import 'package:myfirstprojectflutter/widgets/blue_button.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page 3"),
      ),
      body: _body(context),
    );
  }

  _body(context) {
    return Center(
        child: BlueButton("Voltar", onPressed: ()=>Navigator.pop(context, "Page 3"))
    );
  }
}
