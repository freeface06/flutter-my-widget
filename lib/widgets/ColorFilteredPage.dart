import 'package:flutter/material.dart';

void main() => runApp(const ColorFilteredPage());

class ColorFilteredPage extends StatelessWidget {
  const ColorFilteredPage({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: null,
        body: SafeArea(child: MyStatelessWidget()),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.red,
              BlendMode.modulate,
            ),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
            ),
          ),
          ColorFiltered(
            colorFilter: const ColorFilter.mode(
              Colors.grey,
              BlendMode.saturation,
            ),
            child: Image.network(
              'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg',
            ),
          ),
        ],
      ),
    );
  }
}
