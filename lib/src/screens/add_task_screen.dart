import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCB;
  AddTaskScreen(
    this.addTaskCB,
  );

  @override
  Widget build(BuildContext context) {
    final taskAddController = TextEditingController();
    String taskToAdd;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        padding: EdgeInsets.all(35.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(
              (20.0),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.lightBlueAccent,
              ),
              textAlign: TextAlign.center,
            ),
            TextField(
              onChanged: (value) {
                taskToAdd = value;
              },
              controller: taskAddController,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4.0),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 4.0),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            FlatButton(
              padding: EdgeInsets.all(15.0),
              textColor: Colors.white,
              color: Colors.lightBlueAccent,
              child: Text('Add'),
              onPressed: () {
                addTaskCB(taskToAdd);
                Navigator.pop(context);
                taskAddController.clear();
              },
            ),
          ],
        ),
      ),
    );
  }
}
