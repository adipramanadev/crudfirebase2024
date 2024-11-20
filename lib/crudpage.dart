import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CrudScreen extends StatefulWidget {
  const CrudScreen({super.key});

  @override
  State<CrudScreen> createState() => _CrudScreenState();
}

class _CrudScreenState extends State<CrudScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ageController = TextEditingController();

  //create / add user
  Future<void> _addUser() async {
    final name = nameController.text.trim();
    final email = emailController.text.trim();
    final age = ageController.text.trim();
    if (name.isNotEmpty && email.isNotEmpty && age != null) {
      await FirebaseFirestore.instance
          .collection('user')
          .add({'name': name, 'email': email, 'age': age});
      nameController.clear();
      emailController.clear();
      ageController.clear();
    }
  }

  //delete user 
  Future<void> _deleteUser(String id) async {
    await FirebaseFirestore.instance.collection('user').doc(id).delete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD Screen'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                    )),
                TextField(
                    controller: ageController,
                    decoration: InputDecoration(
                      labelText: 'Age',
                    )),
                ElevatedButton(
                  onPressed: () => _addUser,
                  child: Text('Add User'),
                ),
              ],
            ),
          ),
          //menampilkan datanya
          Expanded(
            child: StreamBuilder(
              stream: FirebaseFirestore.instance.collection('user').snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();
                return ListView(
                  children: snapshot.data!.docs.map(
                    (doc) {
                      final user = doc.data() as Map<String, dynamic>;
                      return ListTile(
                        title: Text(user['name']),
                        subtitle: Text(user['email']),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {},
                            ),
                            IconButton(
                              onPressed: () => [
                                print('delete user'), 
                                _deleteUser,
                              ],
                              icon: Icon(Icons.delete),
                            ),
                          ],
                        ),
                      );
                    },
                  ).toList(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
