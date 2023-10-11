import 'package:flutter/material.dart';

class myFirstSliver extends StatelessWidget {
  const myFirstSliver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 500,
          color: Colors.red,
        ),
        SizedBox(
          height: 520,
          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Container(
                  height: 100,
                  color: Colors.blue,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
