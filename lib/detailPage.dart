import 'package:flutter/material.dart';
import 'package:firstapplicationsqyavril2022/model/utilisateur.dart';

class detailPage extends StatefulWidget {
  Utilisateur user;
  detailPage({required this.user});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return detailState();
  }
}

class detailState extends State<detailPage> {
  var msgController = TextEditingController();

  void sendMessage() {
    //get message
    print(msgController.text);
    // get current user
    // get user to send

    // send message to firebase

    // get messages from firebase

    // clear textfield
    msgController.clear();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
            title: Text("Chat with ${widget.user.prenom} ${widget.user.nom}")),
        body: bodyPage());
  }

  Widget bodyPage() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          controller: msgController,
          decoration: InputDecoration(
            hintText: "Taper votre message",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        // liste des messages éxistant
        RaisedButton(
          onPressed: sendMessage,
          color: Colors.blue,
          child: Text('Send'),
          textColor: Colors.white,
        ),
        // list of message
      ],
    );
  }
}
