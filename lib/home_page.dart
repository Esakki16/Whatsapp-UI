import 'package:flutter/material.dart';
import 'package:whatsapp/chat_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? controller;
  List<String> names = ["Dhanush", "Saranya", "Kavitha", "Pavithra", "Sharmila", "Esakki", "Kumar"];

  @override
  void initState() {
    controller = TabController(length: 4, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff075E54),
        title: Text(
          "WhatsApp",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ))
        ],
        bottom: TabBar(
            controller: controller,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.white,
            tabs: const [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: 'CALLS',
              )
            ]),
      ),
      body: TabBarView(controller: controller, children:  [
        Center(
          child: Text("Camera Screen"),
        ),
        ListView(children: List.generate(names.length, (index) => ChatWidget(name: names[index],),),),
        Center(
          child: Text("Status Screen"),
        ),
        Center(
          child: Text("Calls Screen"),
        ),
      ]),
    );
  }
}
