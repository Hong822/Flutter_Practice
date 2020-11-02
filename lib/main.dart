import 'package:flutter/material.dart';

void main()
{
  runApp (new buttonApp());
}

class buttonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "버튼테스트",
      home: new Scaffold(
        appBar: new AppBar(
         title: new Text("Button Click Test", style: new TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
          backgroundColor: Colors.black12,
        ),
        body: new BodyPanel()
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BodyPanel extends StatefulWidget {
  @override
  _BodyPanelState createState() => _BodyPanelState();
}

class _BodyPanelState extends State<BodyPanel> {

  String URL = "";
  String InternetURL = "";
  String Loading = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new RaisedButton(
          onPressed: _loadingImg,
          child:
          new Text(
            "ImgFromDevice",
            style: TextStyle(fontSize: 20),
          ),
        ),
        new Image(image: AssetImage(URL),),

        new RaisedButton(
          onPressed: _loadingImgFromInternet,
          child:
          new Text(
            "ImgFromInternet",
            style: TextStyle(fontSize: 15),
          ),
        ),
        // new Image.network(InternetURL),
        new FadeInImage.assetNetwork(placeholder: Loading, image: InternetURL),
      ],
    );
  }
  void _loadingImg()
  {
    setState(() {
      URL = "Assets/curry.jpg";
    });

  }
  void _loadingImgFromInternet() {
    InternetURL = "https://t1.daumcdn.net/cfile/tistory/9937F03F5D45785731";
    Loading = "Assets/loading.gif";
  }
}



