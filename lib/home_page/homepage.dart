import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelected = false;
  bool isSelected2 = false;
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    TextScaler textScale = MediaQuery.textScalerOf(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Elevated Button'),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.insert_chart_outlined_sharp,
                  ),
                ),
                PopupMenuButton(itemBuilder: (context) {
                  return [
                    PopupMenuItem(
                      child: Text('Item 1'),
                    ),
                    PopupMenuItem(
                      child: Text('Item 2'),
                    ),
                    PopupMenuItem(
                      child: Text('Item 3'),
                    ),
                  ];
                }),
              ],
            ),
            // FloatingActionButton(
            //   onPressed: () {},
            //   child: Icon(Icons.add),
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButton(
                  onPressed: () {},
                ),
                SegmentedButton(
                  segments: const [
                    ButtonSegment(
                      value: "home",
                      icon: Icon(Icons.home),
                    ),
                    ButtonSegment(
                      value: "home",
                      icon: Icon(Icons.add_shopping_cart),
                    ),
                    ButtonSegment(
                      value: "home",
                      icon: Icon(Icons.flip_camera_ios),
                    ),
                    ButtonSegment(
                      value: "home",
                      icon: Icon(Icons.open_in_new_off_sharp),
                    ),
                  ],
                  selected: const {"home"},
                  onSelectionChanged: (Set<String> newSelection) {},
                ),
                CloseButton(
                  onPressed: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text('Outlined Button'),
                ),
                CupertinoButton(
                  child: Text('Cupertino Button'),
                  onPressed: () {},
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Text Button'),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ChoiceChip(
                    label: Text('Choice Chip'),
                    selected: isSelected,
                    selectedColor: Colors.grey,
                    onSelected: (newstate) {
                      setState(() {
                        isSelected = newstate;
                      });
                    },
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  FilterChip(
                    label: Text('Filter Chip'),
                    selected: isSelected2,
                    onSelected: (bool value) {
                      setState(
                        () {
                          isSelected2 = !isSelected2;
                        },
                      );
                    },
                  ),
                  SizedBox(
                    width: w * 0.02,
                  ),
                  ActionChip(
                    avatar:
                        Icon(favorite ? Icons.favorite : Icons.favorite_border),
                    label: const Text('Save to favorites'),
                    onPressed: () {
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                  ),
                ],
              ),
            ),
            RawMaterialButton(
              onPressed: () {},
              child: Text('Raw Material Button'),
            ),
          ],
        ),
      ),
    );
  }
}
