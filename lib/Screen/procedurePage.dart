import 'package:flutter/material.dart';
import 'package:recipe_app/Model/RecipeClass.dart';

class Procedure extends StatefulWidget {

  final Recipe obj;
  const Procedure(this.obj);

  @override
  _ProcedureState createState() => _ProcedureState();
}

class _ProcedureState extends State<Procedure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Recipe"),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.obj.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              height: 200,
              width: 250,
              child: Image.network(
                widget.obj.image,
                fit: BoxFit.fill,
              )),
          SizedBox(
            height: 8,
          ),
          Text(
            "Ingredients",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            widget.obj.ingredients,
            style: TextStyle(fontSize: 17),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            "Recipe",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:6.0),
            child: Text(widget.obj.recipe,
            style: TextStyle(
              fontSize: 17
            ),),
          )
        ],
      ),
    );
  }
}
