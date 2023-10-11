import 'package:flutter/material.dart';

class MyThirdSliver extends StatelessWidget {
  const MyThirdSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text("SliverAppBar"),
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              "https://picsum.photos/200/300",
              fit: BoxFit.cover,
            ),
          ),
        ),
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
        ),
        SliverFillViewport(
            delegate: SliverChildBuilderDelegate(
          childCount: 5,
          (context, index) {
            return Card(
              child: Container(
                child: Text("Fill ViewPort Item $index"),
              ),
            );
          },
        ))
      ],
    );
  }
}
