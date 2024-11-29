import 'package:flutter/material.dart';
import "package:http/http.dart"as http;

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  TextEditingController titlecontroller =TextEditingController();
   TextEditingController descriptioncontroller =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children:  [
           TextField(
            controller: titlecontroller,
            decoration: const InputDecoration(hintText: "Title"),
          ),
              SizedBox(height: 20,),
           TextField(
            controller: descriptioncontroller,
            decoration: InputDecoration(hintText: "Description"),
          keyboardType: TextInputType.multiline,
          minLines: 5,
          maxLines: 8,),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            submitData();
            print("hello");
          }, child: Text("submit"),)
          
        ],
      ),
    );
  }
  Future <void> submitData() async {
    final title = titlecontroller.text;
        final description = descriptioncontroller.text;
        final body = {
  "title":title,
  "description":description,
  "is_completed": false
};
const url =" https://api.nstack.in/v1/todos";
final uri = Uri.parse(url);
final response = await http.post(uri, body: body);
print(response);

  }
}