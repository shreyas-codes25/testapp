import 'package:flutter/material.dart';

class AllTodo extends StatefulWidget {
  const AllTodo({super.key});

  @override
  State<AllTodo> createState() => _AllTodoState();
}

class _AllTodoState extends State<AllTodo> {
  final textcontroller = TextEditingController();
  List<String> list = [];
  @override
  Widget build(BuildContext context) {
    //scaffold is a group widget helps in building skeleton
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.blue,
        title: const Text("TODO"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(list[index]),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        setState(() {
                          list.remove(list[index]);
                        });
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textcontroller,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    list.add(textcontroller.text);
                    textcontroller.clear();
                  });
                },
                child: const Text("ok"))
          ],
        ),
      ),
    );
  }
}

//center
