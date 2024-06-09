

import 'package:chatapp/learn/subject_content/content/videoplayer/dart/videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../material/course_card.dart';



class ArabicContent extends StatefulWidget {
  final String title;

  const ArabicContent({Key? key, required this.title}) : super(key: key);

  @override
  State<ArabicContent> createState() => _ArabicContentState();
}

class _ArabicContentState extends State<ArabicContent> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Search your chapter .....',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'the subject material',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to the "See All" screen
                  },
                  child: const Text('See All'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children:  [
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 1',
                    rating: 5.0,
                    students: 3825,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true, // or false if you are using Google Drive video
                          ),
                        ),
                      );
                    },
                  ),
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 2',
                    rating: 5.0,
                    students: 3825,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true, // or false if you are using Google Drive video
                          ),
                        ),
                      );


                    },
                  ),
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 3',
                    rating: 5.0,
                    students: 3825,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true,// or false if you are using Google Drive video
                          ),
                        ),
                      );
                    },
                  ),
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 4',
                    rating: 5.0,
                    students: 3825,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true,// or false if you are using Google Drive video
                          ),
                        ),
                      );
                    },
                  ),
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 5',
                    rating: 4.8,
                    students: 2125,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true, // or false if you are using Google Drive video
                          ),
                        ),
                      );
                    },
                  ),
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 6',
                    rating: 4.9,
                    students: 3258,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true, // or false if you are using Google Drive video
                          ),
                        ),
                      );
                    },
                  ),
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 7',
                    rating: 4.7,
                    students: 1524,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true, // or false if you are using Google Drive video
                          ),
                        ),
                      );
                    },
                  ),
                  CourseCard(
                    icon: Icons.design_services,
                    courseName: 'Chapter 8',
                    rating: 4.5,
                    students: 1895,
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VideoScreen(
                            youtubeUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
                            googleDriveUrl: 'https://drive.google.com/uc?export=download&id=YOUR_FILE_ID',
                            description: 'This is a description of the video.',
                            isYouTube: true,// or false if you are using Google Drive video
                          ),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),

      ),
    );
  }
}

