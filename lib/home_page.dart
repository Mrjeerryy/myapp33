import 'dart:convert';

import 'package:myapp33/drawer.dart';
import 'package:myapp33/models/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:myapp33/models/Catelog.dart';
import 'package:flutter/services.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final json = await rootBundle.loadString("assets/files/catalog.json");

    final decoded = jsonDecode(json);
    print("$decoded");
  }

  @override
  Widget build(BuildContext context) {
    // final dummylist = List.generate(20, (index) => catelogmodel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Catalog App",
            style: TextStyle(color: Color.fromARGB(255, 249, 249, 249)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
          itemCount:
              // dummylist.length,
              catelogmodel.items.length,
          itemBuilder: (context, index) {
            return itemwidget(
              items: catelogmodel.items[index],
              // items: dummylist[index],
            );
          },
        ),
      ),
      drawer: mydrawer(),
    );
  }
}
