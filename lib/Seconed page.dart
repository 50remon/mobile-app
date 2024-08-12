import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:recipe_app/recipe.dart';
class secondpage extends StatefulWidget {
   secondpage({Key? key,required this.recipe}) : super(key: key);
  final Recipe recipe;
int value=1;
  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.recipe.name,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children:[
            Image(image:AssetImage(
              widget.recipe.image,
            ),
            fit:BoxFit.fill,
            height:100,
            width:double.infinity,
    ),
    SizedBox(
      height:50,
    ),
    Text(widget.recipe.name),
        SizedBox(
          height: 25,
        ),
            Slider(
            label:'${widget.recipe.servings * widget.value}servings',
            activeColor:Colors.green,
        inactiveColor:Colors.black,
        min:1,
        max:10,
        divisions:9,
        value:widget.value.toDouble(),
            onChanged:(v){
          setState(() {
            widget.value=v.toInt();
          });
            }
        ),
            Expanded(

              child: ListView.builder(
                shrinkWrap:true,
                itemCount: widget.recipe.ingredients.length,
                itemBuilder: (context,index)=>Text('${widget.recipe.ingredients[index].quantity*widget.value} ${widget.recipe.ingredients[index].measure} ${widget.recipe.ingredients[index].name}'
                ),

              ))],

        ),
      ),
    );
  }
}
