import "package:flutter/material.dart";
import 'package:note_keeper/screens/note_detail.dart';


class note_list extends StatefulWidget{
  @override
   createState() {
    // TODO: implement createElement
    return _note_list();
  }
}

class _note_list extends State<note_list>{
  int count=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Notes")
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Colors.deepPurple,
        child:Icon(Icons.add),
        onPressed: (){navigateToDetail("Add Note");}
       ,
        elevation: 6.0,
        tooltip: "Add a new note",
      ),
      body: getListView(),
    );
  }



  ListView getListView(){
    TextStyle textStyle = Theme.of(context).textTheme.subtitle1;
    return ListView.builder(
        itemCount:count,
        itemBuilder: (context,index){
          return Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child:Icon(Icons.arrow_forward_ios_outlined),
                backgroundColor: Colors.yellow,
              ),
            ),
          );
        })
    ;
  }
  void navigateToDetail(String title){
    Navigator.push(context,MaterialPageRoute(builder: (context){
      return note_detail(title);
    }));
  }
}