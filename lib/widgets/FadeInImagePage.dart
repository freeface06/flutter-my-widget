import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart'; // dependencies에 transparent_image: ^2.0.0 추가

void main() => runApp(const FadeInImagePage());

class FadeInImagePage extends StatelessWidget {
  const FadeInImagePage({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: null,
        body: SafeArea(child: MyStatefulWidget()),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FadeInImage.assetNetwork(
        placeholder: 'assets/images/loading.png',      // 로딩 이미지 - 로컬 이미지 사용
        image: 'https://www.cleverfiles.com/howto/wp-content/uploads/2018/03/minion.jpg',   // 본 이미지 - url 사용
      ),
    );
  }
}
