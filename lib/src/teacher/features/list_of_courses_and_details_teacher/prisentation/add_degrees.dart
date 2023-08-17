import 'package:flutter/material.dart';


class Student {
  final int id;
  final String name;
  final String email;
  final String phone;
  int degree;

  Student({required this.id, required this.name, required this.email, required this.phone, this.degree = 0});
}

class DegreeTrackerApp extends StatelessWidget {
  final List<Student> students = [
    Student(id: 1, name: "John", email: "john@example.com", phone: "123-456-7890"),
    Student(id: 2, name: "Alice", email: "alice@example.com", phone: "987-654-3210"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Degrees'),
        ),
        body: StudentList(students: students),
      ),
    );
  }
}

class StudentList extends StatefulWidget {
  final List<Student> students;

  StudentList({required this.students});

  @override
  _StudentListState createState() => _StudentListState();
}

class _StudentListState extends State<StudentList> {
  Map<int, int> degrees = {};

  void _updateDegree(int studentId, int degree) {
    setState(() {
      degrees[studentId] = degree;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: widget.students.length,
            itemBuilder: (context, index) {
              Student student = widget.students[index];
              return ListTile(
                title: Text(student.name),
                subtitle: Text("ID: ${student.id}"),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Degree: ${degrees[student.id] ?? 0}'),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            int currentDegree = degrees[student.id] ?? 0;

                            return AlertDialog(
                              title: Text('Add Degree for ${student.name}'),
                              content: TextField(
                                keyboardType: TextInputType.number,
                                onChanged: (value) {
                                  currentDegree = int.tryParse(value) ?? 0;
                                },
                                decoration: InputDecoration(labelText: 'Degree'),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    _updateDegree(student.id, currentDegree);
                                    Navigator.pop(context);
                                  },
                                  child: Text('Add'),
                                ),
                              ],
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        ElevatedButton(
          onPressed: () {
            String degreeText = degrees.entries.map((entry) => '"${entry.key}":${entry.value}').join(', ');
            print(degreeText);
            showDialog(
              context: context,
              builder: (BuildContext context) {
                String degreeText = degrees.entries.map((entry) => '${entry.key}:${entry.value}').join(', ');
                return AlertDialog(
                  title: Text('All Degrees'),
                  content: Text(degreeText),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Close'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show All Degrees'),
        ),
      ],
    );
  }
}
