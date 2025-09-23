import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SpacedList extends StatelessWidget {
  const SpacedList({super.key});

  @override
  Widget build(BuildContext context) {
    const int itemsCount = 4;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'spaced list',
          style: TextStyle(color: const Color.fromARGB(209, 0, 0, 0)),
        ),
        backgroundColor: const Color.fromARGB(134, 83, 51, 170),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        return SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: List.generate(
                  itemsCount,
                  (index) => Card(
                        margin: const EdgeInsets.all(8),
                        color: Colors.orangeAccent[100 * (index + 2)],
                        child: SizedBox(
                          height: 100,
                          child: Center(
                            child: Text('item $index',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                        ),
                      )),
            ),
          ),
        );
      }),
    );
  }
}
