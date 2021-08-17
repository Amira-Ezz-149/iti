import 'package:iti_training/models/user_model.dart';
import 'package:iti_training/screens/user_details.dart';
import 'package:iti_training/services/user_service.dart';
import 'package:iti_training/widgets/info_decoration_card.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'user_details.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool waiting = true;
  List<User> users = [];
  User user;

  getListOfUsers() async {
    users = await UserService().getUsers();
    waiting = false;
    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getListOfUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text('Users screen', style: TextStyle(color: Colors.blue),),
      ),
      body: waiting
          ? Center(
              child: CircularProgressIndicator(
                backgroundColor: Colors.blue,
              ),
            )
          : ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => UserDetails(users[index])),
                      );
                    },
                    //child: Text("${users[index].name}"),
                    child: InfoDecorationCard(content: "${users[index].name}",),

                  ),
                );
              },
            ),
    );
  }
}
