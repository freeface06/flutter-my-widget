import 'package:flutter/material.dart';

void main() => runApp(const SliverFadeTransitionPage());

class SliverFadeTransitionPage extends StatelessWidget {
  const SliverFadeTransitionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: MaterialApp(
        home: Scaffold(
          appBar: null,
          body: Center(
            child: SliverFadeTransitionExample(),
          ),
        ),
      ),
    );
  }
}

class SliverFadeTransitionExample extends StatefulWidget {
  const SliverFadeTransitionExample({super.key});

  @override
  State<SliverFadeTransitionExample> createState() =>
      _SliverFadeTransitionExampleState();
}

class _SliverFadeTransitionExampleState
    extends State<SliverFadeTransitionExample>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(milliseconds: 1000),
    vsync: this,
  );
  late final Animation<double> animation = CurvedAnimation(
    parent: controller,
    curve: Curves.easeIn,
  );

  @override
  void initState() {
    super.initState();
    animation.addStatusListener((AnimationStatus status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverFadeTransition(
        opacity: animation,
        sliver: SliverFixedExtentList(
          itemExtent: 100.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: index.isEven ? Colors.indigo[200] : Colors.orange[200],
              );
            },
            childCount: 5,
          ),
        ),
      ),
    ]);
  }
}
