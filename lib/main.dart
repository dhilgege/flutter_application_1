// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const MyHomePage(title: "Flutter Demo"),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {

  
//   List<Map<String, dynamic>> items = [];

//   void tambah() {
//     setState(() {
//       items.add({
//         "title": "New Item",
//         "favorite": false,
//       });
//     });
//   }


//   void deleteItem(int index) {
//     setState(() {
//       items.removeAt(index);
//     });
//   }

//   void toggleFavorite(int index) {
//     setState(() {
//       items[index]["favorite"] = !items[index]["favorite"];
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Tambah & Hapus ListView"),
//         actions: [
//           IconButton(
//             onPressed: tambah,
//             icon: const Icon(Icons.add),
//           ),

//           Row(
//             children: [
//               const Icon(Icons.favorite, color: Colors.red),
//               Text(
//                 items.where((e) => e["favorite"] == true).length.toString(),
//                 style: const TextStyle(fontSize: 18),
//               ),
//               const SizedBox(width: 16),
//             ],
//           ),
//         ],
//       ),

//       body: ListView.builder(
//         itemCount: items.length,
//         itemBuilder: (context, index) {
//           return Container(
//             height: MediaQuery.of(context).size.height * 0.15,
//             margin: const EdgeInsets.all(10),
//             padding: const EdgeInsets.all(10),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: Colors.transparent, width: 3),
//             ),

//             child: Row(
//               children: [
//                 const SizedBox(width: 10),

//                 // TEXT ITEM
//                 Expanded(
//                   child: Text(
//                     items[index]["title"],
//                     style: const TextStyle(fontSize: 22),
//                   ),
//                 ),

//                 // FAVORITE BUTTON
//                 IconButton(
//                   onPressed: () => toggleFavorite(index),
//                   icon: Icon(
//                     items[index]["favorite"]
//                         ? Icons.favorite
//                         : Icons.favorite_border,
//                     color: items[index]["favorite"]
//                         ? Colors.red
//                         : Colors.black,
//                   ),
//                 ),

//                 // DELETE BUTTON
//                 IconButton(
//                   onPressed: () => deleteItem(index),
//                   icon: const Icon(Icons.delete),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/bloc/authentication/authentication_bloc.dart';
import 'package:flutter_application_1/pages/cubit/change_color_cubit.dart';
import 'package:flutter_application_1/pages/cubit/counter_cubit.dart';
import 'package:flutter_application_1/pages/cubit/favorite_count_cubit.dart';
import 'package:flutter_application_1/pages/cubit/items_cubit.dart';
import 'package:flutter_application_1/pages/cubit/visibility_cubit.dart';
import 'package:flutter_application_1/pages/loginPage.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'bloc/authentication/authentication_bloc.dart';
import 'pages/cubit/item_page.dart';

void main() => runApp

 (CounterApp());

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: MultiBlocProvider(
  providers: [
    BlocProvider<CounterCubit>(
      create: (BuildContext context) => CounterCubit(),
    ),
    BlocProvider <ChangeColorCubit>(
      create: (BuildContext context) => ChangeColorCubit(),
    ),
    BlocProvider <VisibilityCubit>(
      create: (BuildContext context) => VisibilityCubit(),
    ),
    BlocProvider <FavoriteCountCubit>(
      create: (BuildContext context) => FavoriteCountCubit(),
    ),
    BlocProvider <ItemsCubit>(
      create: (BuildContext context) => ItemsCubit(),
    ),
    
  ],
  child: Loginpage(),
          
),
      // home: BlocProvider(
      //   create: (_) => CounterCubit(),
      //   child: CounterPage(),
      // ),
    );
  }
}