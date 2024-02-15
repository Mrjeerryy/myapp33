import 'package:flutter/material.dart';
import 'package:myapp33/models/Catelog.dart';

class itemwidget extends StatelessWidget {
  final myitems items;

  // ignore: unnecessary_null_comparison
  const itemwidget({super.key, required this.items}) : assert(items != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("object");
        },
        leading: Image.network(items.image_url),
        title: Text(items.name),
        subtitle: Text(items.description),
        trailing: Text("\$${items.price}",
            style: TextStyle(
                color: Colors.deepPurple, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
