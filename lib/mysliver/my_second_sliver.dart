import 'package:flutter/material.dart';

class MySecondSliver extends StatelessWidget {
  const MySecondSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          //sliver에 일반 위젯 넣는 방법
          child: Container(
            height: 500,
            color: Colors.red,
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
              childCount: 5,
              (context, index) => Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      height: 100,
                      color: Colors.blue,
                      child: Text("$index"),
                    ),
                  )),
        )
      ],
    );
  }
}
