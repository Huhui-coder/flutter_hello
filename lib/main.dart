import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      color:Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Image.network(posts[index].imageUrl),
          SizedBox(height:16.0),
          Text(
            posts[index].title,
            style: Theme.of(context).textTheme.subtitle1
          ),
          Text(
            posts[index].author,
            style: Theme.of(context).textTheme.subtitle2
          ),
          SizedBox(height:16.0),
        ],
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hello'),
          elevation: 0.0,
        ),
        body: ListView.builder(
            itemCount: posts.length, itemBuilder: _listItemBuilder));
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello_flutter,',
          textDirection: TextDirection.ltr,
          style: TextStyle(
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
              color: Colors.black26)),
    );
  }
}
