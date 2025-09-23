import 'package:flutter/material.dart';

abstract class ListItem {
  Widget buildTitle(BuildContext context);
  Widget buildSubtitle(BuildContext context);
  // Widget? buildLeading(BuildContext context);
}

class HeadingItem implements ListItem {
  final String heading;
  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: TextStyle(
          color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();

  // @override
  // Widget? buildLeading(BuildContext context) => null;
}

class MessageItem implements ListItem {
  final String pesan;
  final String image;

  MessageItem(this.pesan, this.image);

  @override
  Widget buildTitle(BuildContext context) => Row(
        children: [
          Icon(Icons.message, size: 20),
          SizedBox(width: 8),
          Text(pesan),
        ],
      );

  @override
  Widget buildSubtitle(BuildContext context) => Text(image);

  // @override
  // Widget? buildLeading(BuildContext context) => const Icon(
  //   Icons.message,
  //   color: Colors.white,
  // );
}

class Imageitem implements ListItem {
  final String title;
  final String imagePath;
  Imageitem(this.title, this.imagePath);

  @override
  Widget buildTitle(BuildContext context) => Text(title);

  @override
  Widget buildSubtitle(BuildContext context) => Image.asset(
        imagePath,
        width: 50,
        fit: BoxFit.cover,
      );
}

class listt extends StatelessWidget {
  const listt({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ListItem> items = List<ListItem>.generate(30, (i) {
      if (i % 5 == 0) {
        return HeadingItem('Heading $i');
      } else if (i % 3 == 0) {
        return Imageitem('Gambar $i', 'aset/image.png');
      } else {
        return MessageItem('Pesan $i', 'Ini adalah isi pesan nomor $i');
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: Text('List Item dengan Berbagai Item'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            elevation: 2,
            child: ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            ),
          );
        },
      ),
    );
  }
}
