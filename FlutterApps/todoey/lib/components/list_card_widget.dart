import 'package:flutter/material.dart';
import 'package:todoey/components/constants.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTileCard(),
        ListTileCard(),
        ListTileCard(),
        ListTileCard(),
      ],
    );
  }
}

class ListTileCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        '1. Task',
        style: TextStyle(
          color: Colors.black45,
          fontSize: 35,
        ),
      ),
      trailing: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Checkbox(
          value: false,
          checkColor: Colors.white,
          activeColor: kRedRoseLight,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
