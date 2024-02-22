import 'package:flutter/material.dart';
import 'package:task/model/user_model.dart';
import 'package:task/view/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message,color: Colors.black,),
            label: ""
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call,color: Colors.grey,),
            label: ""
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.grey,),
            label: ""
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.grey,),
            label: ""
            
          ),
        ]),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15,top: 18),
          child: Text("Chat",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        ),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 15),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/image/img_male.png"),
          ),
        )],
      ),
      body: 
      ListView.builder(
        itemCount: userdata.length,
        itemBuilder: (context, index) {
        return GestureDetector(
          child: Container(
            padding: EdgeInsets.all(7),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
               Stack(
                children: [
                  CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(userdata[index].profile),
                  ),
          
              Positioned(
                bottom: 5,
                right: -1,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                  ))
                ],
              ),
              SizedBox(width: 15,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(userdata[index].name),
                    Text("Active now",style: TextStyle(color: Colors.grey,fontSize: 13),)
                  ],),

                        
                        // SizedBox(width: 20,),
                   Padding(
                     padding: const EdgeInsets.only(left: 90),
                     child: Text(userdata[index].time,style: TextStyle(color: Colors.grey)),
                   )
                ],
              ),
          
              
          
             
            ],),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreen(datas: userdata[index],)));
          },
        );
  })
   
    );
  }
}