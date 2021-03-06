import "package:flutter/material.dart";


// ignore: camel_case_types
class note_detail extends StatefulWidget{
  String title;
  note_detail(this.title);
  createState(){
    return _note_detail(title);
  }
}

// ignore: camel_case_types
class _note_detail extends State<note_detail>{
  String title;
  _note_detail(this.title);
  var priorities=["High","Low"];
  TextEditingController titlecontroller = TextEditingController();
  TextEditingController subtitlecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
    child:Scaffold(
            appBar: AppBar(
              leading: IconButton(icon:Icon(Icons.arrow_back),onPressed: () {moveToLastScreen();}),
              title: Text(title),
            ),  
            body: Padding(padding: EdgeInsets.all(5.0),
                child:ListView(
              children:<Widget> [

                ListTile(
                    title:DropdownButton<String>(
                  items:priorities.map((String dropDownItemSelected){
                    return DropdownMenuItem<String>(
                      value: dropDownItemSelected,
                      child: Text(dropDownItemSelected),
                    );
                  }).toList(),
                      value:'Low',
                      onChanged:(valueSelectedByUser){

                      },
                )),
                Padding(padding: EdgeInsets.all(15.0), 
                child:ListTile(
                    title:TextField(
                      decoration: InputDecoration(
                          labelText: "Enter Title",
                          hintText: "Enter the title of the note"
                      ),
                      controller:titlecontroller ,
                    )
                )),
                
                Padding(padding: EdgeInsets.all(15.0),
                    child:ListTile(
                    title:TextField(
                      decoration: InputDecoration(
                          labelText: "Enter Description",
                          hintText: "Enter the description of the note"
                      ),
                      controller:subtitlecontroller ,
                    )
                )),
                Padding(padding: EdgeInsets.all(15.0),
                 child: Row(
                    children: [
                      Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            textColor: Theme.of(context).primaryColorLight,
                            onPressed: null,
                            child: Text("Save",textScaleFactor: 1.5,),
                          )),
                      Expanded(
                          child: RaisedButton(
                            color: Theme.of(context).primaryColorDark,
                            textColor: Theme.of(context).primaryColorLight,
                            onPressed: null,
                            child: Text("Delete",textScaleFactor: 1.5,),
                          ))
                    ],
                  )
                )



              ],
                )
            ),
            
    ));
    }
  void moveToLastScreen(){
    Navigator.pop(context);
  }
  }

