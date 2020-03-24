import 'package:flutter/material.dart';
import 'model/post.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //使用MaterialApp 自身的一些属性
    return MaterialApp(
      // 设置主体内容，内容是使用home这个类去承载的
      home: Home(),
      // 设置主题
      theme: ThemeData(primaryColor: Colors.yellow),
    );
  }
}

class Home extends StatelessWidget {
  // 构建一个Widget。两个参数 一个context 一个 index
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      // 设置这个容器的颜色
        color: Colors.white,
        // 设置这个容器的边距
        margin: EdgeInsets.all(8.0),
        // child 去规划内容，使用的是一个列的Column布局
        child: Column(
          // 使用children 去规划内容,列表项是一个数组
          children: <Widget>[
            Image.network(posts[index].imageUrl),
            SizedBox(height: 16.0),
            Text(posts[index].title,
                style: Theme.of(context).textTheme.subtitle1),
            Text(posts[index].author,
                style: Theme.of(context).textTheme.subtitle2),
            SizedBox(height: 16.0),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hello'),
          elevation: 0.0,
        ),
        // body 主题内容是使用ListView.builder 去构建一个列表
        body: ListView.builder(
          // itemCount：数量，itemBuilder ： 构建列表的UI表示
            itemCount: posts.length, itemBuilder: _listItemBuilder));
  }
}
// 这个是完全没用到的
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
