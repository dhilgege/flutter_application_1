import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: "Flutter Demo"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  
  List<Map<String, dynamic>> items = [];

  void tambah() {
    setState(() {
      items.add({
        "title": "New Item",
        "favorite": false,
      });
    });
  }


  void deleteItem(int index) {
    setState(() {
      items.removeAt(index);
    });
  }

  void toggleFavorite(int index) {
    setState(() {
      items[index]["favorite"] = !items[index]["favorite"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah & Hapus ListView"),
        actions: [
          IconButton(
            onPressed: tambah,
            icon: const Icon(Icons.add),
          ),

          Row(
            children: [
              const Icon(Icons.favorite, color: Colors.red),
              Text(
                items.where((e) => e["favorite"] == true).length.toString(),
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(width: 16),
            ],
          ),
        ],
      ),

      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.15,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.transparent, width: 3),
            ),

            child: Row(
              children: [
                const SizedBox(width: 10),

                // TEXT ITEM
                Expanded(
                  child: Text(
                    items[index]["title"],
                    style: const TextStyle(fontSize: 22),
                  ),
                ),

                // FAVORITE BUTTON
                IconButton(
                  onPressed: () => toggleFavorite(index),
                  icon: Icon(
                    items[index]["favorite"]
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: items[index]["favorite"]
                        ? Colors.red
                        : Colors.black,
                  ),
                ),

                // DELETE BUTTON
                IconButton(
                  onPressed: () => deleteItem(index),
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
