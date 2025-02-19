import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/FireBase/todoHomeFb/ScreenFb/LoginScreenFirebase.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class HomePageFireBase extends StatefulWidget {
  const HomePageFireBase({super.key});

  @override
  State<HomePageFireBase> createState() => _HomePageFireBaseState();
}

class _HomePageFireBaseState extends State<HomePageFireBase> {
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController descriptioncontroller = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  User? user;
  String userName = "User";

  @override
  void initState() {
    super.initState();
    user = auth.currentUser;
    _getUserName();
  }

  Future<void> _getUserName() async {
    if (user != null) {
      DocumentSnapshot userDoc =
          await firestore.collection('users').doc(user!.uid).get();
      if (userDoc.exists) {
        setState(() {
          userName = userDoc['name'] ?? "User";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: _addTodo,
        backgroundColor: Colors.yellow[400],
        child: Icon(Icons.add, color: Colors.black),
      ),
      appBar: AppBar(
        backgroundColor: Colors.yellow[400],
        elevation: 0,
        title: Text("Todo List"),
        centerTitle: true,
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text("Welcome",
                  style: TextStyle(fontSize: 20, color: Colors.white)),
              subtitle: Text(userName,
                  style: TextStyle(fontSize: 16, color: Colors.yellowAccent)),
              trailing: CircleAvatar(
                backgroundColor: Colors.yellow[400],
                child: IconButton(
                  icon: Icon(Icons.logout_outlined, color: Colors.black),
                  onPressed: _logout,
                ),
              ),
            ),
            Expanded(
              child: StreamBuilder(
                stream: firestore
                    .collection('todos')
                    .where('userId', isEqualTo: user?.uid)
                    .snapshots(),
                builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                        child: Text("No todos available",
                            style: TextStyle(color: Colors.white)));
                  }
                  return ListView.builder(
                    itemCount: snapshot.data!.docs.length,
                    itemBuilder: (context, index) {
                      var todo = snapshot.data!.docs[index];
                      return _buildTodoItem(todo);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTodoItem(QueryDocumentSnapshot todo) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              backgroundColor: Colors.red,
              icon: Icons.delete,
              label: "Delete",
              onPressed: (context) => _deleteTodo(todo.id),
            ),
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.yellow, borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            title: Text(todo['title'], style: TextStyle(fontSize: 20)),
            subtitle: Text(todo['description']),
            trailing: IconButton(
              icon: Icon(Icons.edit, size: 20, color: Colors.black),
              onPressed: () => _editTodo(todo),
            ),
          ),
        ),
      ),
    );
  }

  void _addTodo() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.yellow,
          title: Text("Add Todo", style: TextStyle(color: Colors.black)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                  controller: titlecontroller,
                  decoration: InputDecoration(
                    hintText: "Todo title",
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                  )),
              SizedBox(height: 10),
              TextField(
                  controller: descriptioncontroller,
                  maxLines: 3,
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: "Todo description",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none))),
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: _saveTodo,
                child: Text(
                  "Save",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        );
      },
    );
  }

  void _saveTodo() async {
    if (titlecontroller.text.isNotEmpty &&
        descriptioncontroller.text.isNotEmpty) {
      await firestore.collection('todos').add({
        'title': titlecontroller.text,
        'description': descriptioncontroller.text,
        'userId': user?.uid,
      });
      titlecontroller.clear();
      descriptioncontroller.clear();
      Navigator.pop(context);
    }
  }

  void _editTodo(QueryDocumentSnapshot todo) {
    titlecontroller.text = todo['title'];
    descriptioncontroller.text = todo['description'];
    _addTodo();
  }

  void _deleteTodo(String todoId) async {
    await firestore.collection('todos').doc(todoId).delete();
  }

  void _logout() {
    FirebaseAuth.instance.signOut().then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginScreenFirebase()),
          (route) => false);
    });
  }
}
