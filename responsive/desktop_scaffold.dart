import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';

import '../utlil/my_box.dart';
import '../utlil/my_tile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar,
      body: Row(children: [
        myDrawer,
        Expanded(
          flex: 2,
          child: Column(
            children: [
              AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return const MyBox();
                        },
                      ))),
              Expanded(
                  child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const MyTile();
                },
              )),
            ],
          ),
        ),
        Expanded(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(color: Colors.blue)),
                  child: const Center(child: Text("My Extra Box")),
                ),
              )),
        )
      ]),
    );
  }
}
