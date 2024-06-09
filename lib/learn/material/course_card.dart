
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  final IconData icon;
  final String courseName;
  final double rating;
  final int students;
  final VoidCallback onTap;

  const CourseCard({
    Key? key,
    required this.icon,
    required this.courseName,
    required this.rating,
    required this.students,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 4,
      shadowColor: Colors.grey.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: ListTile(
          leading: Icon(icon, size: 40),
          title: Text(courseName, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          subtitle: Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16),
              SizedBox(width: 4),
              Text('$rating'),
              SizedBox(width: 8),
              Text('($students Students)'),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}