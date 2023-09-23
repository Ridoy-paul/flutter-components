import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  var myList = [
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/B2.png", "title" : "Ridoy Paul"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-2.jpg", "title" : "Jago news"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-1.jpg", "title" : "Somoy News"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-7.jpg", "title" : "Nasa"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-4.jpg", "title" : "Basis Soft Expo."},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-6.jpg", "title" : "Sodesh Bidesh"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/B2.png", "title" : "Ridoy Paul"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-2.jpg", "title" : "Jago news"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-1.jpg", "title" : "Somoy News"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-7.jpg", "title" : "Nasa"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-4.jpg", "title" : "Basis Soft Expo."},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-6.jpg", "title" : "Sodesh Bidesh"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/B2.png", "title" : "Ridoy Paul"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-2.jpg", "title" : "Jago news"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-1.jpg", "title" : "Somoy News"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-7.jpg", "title" : "Nasa"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-4.jpg", "title" : "Basis Soft Expo."},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-6.jpg", "title" : "Sodesh Bidesh"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/B2.png", "title" : "Ridoy Paul"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-2.jpg", "title" : "Jago news"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-1.jpg", "title" : "Somoy News"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-7.jpg", "title" : "Nasa"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-4.jpg", "title" : "Basis Soft Expo."},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-6.jpg", "title" : "Sodesh Bidesh"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/B2.png", "title" : "Ridoy Paul"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-2.jpg", "title" : "Jago news"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-1.jpg", "title" : "Somoy News"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-7.jpg", "title" : "Nasa"},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-4.jpg", "title" : "Basis Soft Expo."},
    {"img" : "https://cdn-ipieb.nitrocdn.com/XUuAIAbfSYJmvfScsdokbEdfsfJmcNEb/assets/images/optimized/rev-9f5d252/wp-content/uploads/2023/05/Untitled-design-6.jpg", "title" : "Sodesh Bidesh"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
      ),

      body: Padding(
        padding: EdgeInsets.all(3.0),
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.4,
              crossAxisSpacing: 3,
            ),
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: double.infinity,
                  height: 200,
                  child: Image.network(
                    myList[index]['img']!,
                    fit: BoxFit.fill,
                  ),
                ),
              );
            }
        ),
      ),
    );
  }
}

