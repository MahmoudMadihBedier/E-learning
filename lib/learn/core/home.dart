
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../subject_content/content/arbic_content.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(Icons.menu, color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header section
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar.png'),
                    radius: 30,
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hi unknown 👋',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Today is a good day to learn \n something new!',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 14,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 24),

              // Tab bar section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      _buildCategoryTab(context, 'علم علوم', false),
                      _buildCategoryTab(context, 'علم رياضة',true),
                      _buildCategoryTab(context, 'ادبي', false),
                    ],
                  ),
                  Icon(Icons.tune, color: Colors.black),
                ],
              ),
              SizedBox(height: 24),

              // Categories section
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Education subjects',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),

              // Categories grid
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildCategoryCard(context, 'Arabic language', '15 chapter', Colors.blue, 'assets/Aribicg.png'),
                  _buildCategoryCard(context, 'English language', '16 chapter', Colors.red, 'assets/English.png'),
                  _buildCategoryCard(context, 'second language', '9 chapter', Colors.orange, 'assets/sacandLanguage.png'),
                  _buildCategoryCard(context, 'physics', '22 chapter', Colors.purple, 'assets/physics.png'),
                  _buildCategoryCard(context, 'chemistry', '12 chapter', Colors.green, 'assets/physics.png'),
                  _buildCategoryCard(context, 'Math 1', '10 chapter', Colors.pink, 'assets/Math.png'),
                  _buildCategoryCard(context, 'Math 2', '8 chapter', Colors.brown, 'assets/Math.png'),
                  _buildCategoryCard(context, 'Math 3', '11 chapter', Colors.yellow, 'assets/Math.png'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryTab(BuildContext context, String label, bool isSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Chip(
        backgroundColor: isSelected ? Colors.red : Colors.grey[200],
        label: Text(
          label,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String title, String subtitle, Color color, String imagePath) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(

            builder: (context) => ArabicContent(title: title),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: color.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: color.withOpacity(0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16.0),
              child: Image.asset(
                imagePath,
                height: 50,
                width:100,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
