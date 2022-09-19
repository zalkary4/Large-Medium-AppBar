import 'package:flutter/material.dart';

class LargeAndSmallAppBar extends StatefulWidget {
  const LargeAndSmallAppBar({Key? key}) : super(key: key);

  @override
  _AppBarState createState() => _AppBarState();
}

class _AppBarState extends State<LargeAndSmallAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            backgroundColor: Colors.red,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.menu),
            ),
            title: const Text('Large app bar'),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_vert),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 1300,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
