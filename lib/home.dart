import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Whatsapp"),
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text("chats"),
              ),
              Tab(
                child: Text("status"),
              ),
              Tab(
                child: Text("call"),
              ),
            ]),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 20,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        PopupMenuItem(value: 1, child: Text("New Group")),
                        PopupMenuItem(value: 2, child: Text("New Broadcast")),
                        PopupMenuItem(value: 1, child: Text("Linked device")),
                        PopupMenuItem(value: 1, child: Text("Starred message")),
                        PopupMenuItem(value: 1, child: Text("Setting")),
                      ])
            ],
          ),
          body: TabBarView(children: [
            Text("camera"),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkSQpuRwKcQD_-_2yf6EGsw56SsFVa4jdKaQ&usqp=CAU"),
                    ),
                    title: Text("Samina"),
                    subtitle: Text("where is my dog"),
                    trailing: Text("3:36 AM"),
                  );
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  if(index==0){
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("New Updates"),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                )),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkSQpuRwKcQD_-_2yf6EGsw56SsFVa4jdKaQ&usqp=CAU"),
                            ),
                          ),
                          title: Text("Samina"),
                          subtitle: Text("35m ago"),
                        ),
                      ],
                    );

                  }
                  else{
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                )),
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkSQpuRwKcQD_-_2yf6EGsw56SsFVa4jdKaQ&usqp=CAU"),
                            ),
                          ),
                          title: Text("Samina"),
                          subtitle: Text("35m ago"),
                        ),
                      ],
                    );
                  }
                }),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkSQpuRwKcQD_-_2yf6EGsw56SsFVa4jdKaQ&usqp=CAU"),
                    ),
                    title: Text("Samina"),
                    subtitle: Text("Today, 3:40 AM"),
                    trailing: Icon(
                      index % 2 == 0 ? Icons.phone : Icons.video_call,
                      color: Colors.teal,
                    ),
                  );
                }),
          ]),
        ));
  }
}
