import 'package:flutter/material.dart';
import 'package:myapp/constants.dart';
import 'package:myapp/utlil/my_box.dart';
import '../utlil/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({super.key});

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar,
        drawer: myDrawer,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: SizedBox(
                  width: double.infinity,
                  child: GridView(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    children: const [MyBox(), MyBox(), MyBox(), MyBox()],
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const MyTile();
                },
              ))
            ],
          ),
        ));
  }
}
