import 'package:flutter/material.dart';
import 'package:whatsapp/photo_view.dart';

class ChatWidget extends StatefulWidget {
  final String name;
  const ChatWidget({super.key, required this.name});

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoView(name: widget.name,),));
        },
        child: Hero(
          tag: widget.name,
          child: CircleAvatar(backgroundColor: Colors.red,backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_XGRNnUFdJyPG0jep9tpg_PV-zYZQfQyYbA&s"),))),
      title: Text(widget.name),
      subtitle: Text("Hello, Ena pandrenga"),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
        Text("10:30 AM"),
        Icon(Icons.pin_invoke_outlined)
      ],),
    );
  }
}