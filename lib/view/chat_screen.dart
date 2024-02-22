import 'package:flutter/material.dart';
import 'package:task/model/user_model.dart';

import '../model/massege_model.dart';

class ChatScreen extends StatefulWidget {
  final User datas;

  const ChatScreen({super.key,required this.datas});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  TextEditingController _chatController = TextEditingController();
   final List<Message> _messages = []; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Padding(
        padding: const EdgeInsets.all(6),
        child: CircleAvatar(backgroundImage: AssetImage(widget.datas.profile),),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.datas.name,style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
          Text("Active now",style: TextStyle(fontSize:15,color: Colors.grey))
        ],
      ),
      centerTitle: false,
      actions: [
        IconButton(icon: Icon(Icons.call), onPressed: () {}),
        IconButton(icon: Icon(Icons.clear), onPressed: () {
          Navigator.pop(context);
        }),
      ],automaticallyImplyLeading: false,
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          keyboardType: TextInputType.multiline,
          controller: _chatController,
          decoration: InputDecoration(
            filled: true,
            fillColor: const Color.fromARGB(255, 233, 232, 232),
            suffixIcon: IconButton(onPressed: (){
              String massege = _chatController.text;

              print(massege);
              _chatController.clear();
            },
             icon: Icon(Icons.send)),
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.all(Radius.circular(10.0)),
            // ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide.none
            ),
      
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide.none
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide.none
            ),
            hintText: 'Enter your message',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),

      body: Column(children: [
        Expanded(
          child: Container(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text("message"),
                );
              }),
          ),)
      ],),
    );
  }
    @override
  void dispose() {
    _chatController.dispose(); // Dispose the controller
    super.dispose();
  }
}