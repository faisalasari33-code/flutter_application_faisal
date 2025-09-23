import 'package:flutter/material.dart';

abstract class ListItem{
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
  Widget? buildLeading(BuildContext context);
}

class HeadingItem implements ListItem{
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        color: Colors.blue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();

  @override
  Widget? buildLeading(BuildContext context) => null;
}

class MessageItem implements ListItem{
  final String pesan;
  final String image;

  MessageItem(this.pesan, this.image);

  @override
  Widget buildTitle(BuildContext context) => Text(pesan);

  @override
  Widget buildSubtitle(BuildContext context) => Padding(
    padding: const EdgeInsets.only(top: 8.0),
    child: Image.network(
      image,
      height: 100,
      fit: BoxFit.cover,
    ),
  );
  

  @override
  Widget? buildLeading(BuildContext context) => const Icon(
    Icons.message,
    color: Colors.white,
  );
}


class LayoutTugas extends StatelessWidget {
  const LayoutTugas({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List<ListItem>.generate(
      30,
      (i) => i % 5 == 0
        ? HeadingItem('pesan $i')
        : MessageItem(
          'pesan $i',
          'p.jpg $i'),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('List Item dengan Berbagaai Item'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];

          return ListTile(
            leading: item.buildLeading(context),
            title: item.buildTitle(context),
            subtitle: item.buildSubtitle(context),
          );
        },
      ),
    );
  }
}

void main(){
  runApp(const MaterialApp(
    home: LayoutTugas(),
  ));
}