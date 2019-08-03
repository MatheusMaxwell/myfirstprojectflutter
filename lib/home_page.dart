import 'package:flutter/material.dart';
import 'package:myfirstprojectflutter/pages/hello_page1.dart';
import 'package:myfirstprojectflutter/pages/hello_page2.dart';
import 'package:myfirstprojectflutter/pages/hello_page3.dart';
import 'package:myfirstprojectflutter/utils/nav.dart';
import 'package:myfirstprojectflutter/widgets/blue_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Flutter"),
      ),
      body: _body(context) ,
    );
  }


  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context)

        ],
      ),
    );
  }
  
  _image(String asset){
    return Image.asset(
        asset
    );
  }

  _pageView(){
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _image("assets/images/cavalo1.jpg"),
          _image("assets/images/cavalo2.jpg"),
          _image("assets/images/cavalo3.jpg"),
          _image("assets/images/cavalo4.jpg"),
          _image("assets/images/cavalo5.jpg")
        ],
      ),
    );
  }

  _buttons(BuildContext context){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton( "ListView", onPressed: () => _onClickNavigator(context, HelloPage1())),
            BlueButton("Page 2", onPressed: () => _onClickNavigator(context, HelloPage2())),
            BlueButton( "Page 3", onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton( "Snack", onPressed: _onClickSnack),
            BlueButton( "Dialog",onPressed:  _onClickDialog),
            BlueButton( "Toast", onPressed: _onClickToast),
          ],

        )
      ],
    );
  }

  void _onClickNavigator(BuildContext context, Widget page){
    push(context, page);
  }

  _onClickSnack() {
  }

  _onClickDialog() {
  }

  _onClickToast() {
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
        fontSize: 30,
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }


  
}

