import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_Separated(),));
}
class ListView_Separated extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Separator",style: TextStyle(color: Colors.black),),
      ),
      body: ListView.separated
      (
        itemBuilder: (context,index)
        {
         return  Card(child: Text("Silpa"),);
         //Image.asset("assets/icons/girl.jpg"),);
        },
        separatorBuilder:(context,index)
        {
          if(index %4 ==0)
          {
            return Divider(color: Colors.red,thickness: 5,);
          }else{
            return SizedBox();
          }
          
        },
        itemCount:15,
      ),
    );
  }
  
}