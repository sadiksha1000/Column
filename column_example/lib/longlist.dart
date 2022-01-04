import 'package:flutter/material.dart';

class LongList extends StatefulWidget {
  final List<String>? products;
  const LongList({Key? key, required this.products}) : super(key: key);

  @override
  _LongListState createState() => _LongListState();
}

class _LongListState extends State<LongList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
      // scrollDirection: Axis.horizontal,
      itemCount: widget.products!.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.account_box_rounded),
          title: Text('${widget.products![index]}'),
          trailing: IconButton(
            icon: Icon(
              Icons.delete,
              color: Colors.blue,
            ),
            onPressed: () {
              setState(() {
                widget.products!.removeAt(index);
              });
            },
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(
        color: Colors.blue,
        thickness: 3,
      ),
    ));
  }
}
