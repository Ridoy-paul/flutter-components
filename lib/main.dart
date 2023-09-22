import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage()
    );
  }
}

class HomePage extends StatelessWidget{

  var myItem = [
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

    ButtonStyle styleOne = ElevatedButton.styleFrom(
      padding: EdgeInsets.fromLTRB(30, 2, 30, 2),
      foregroundColor: Colors.white,
      backgroundColor: Colors.deepOrangeAccent,
      minimumSize: Size(double.infinity, 50),
      textStyle: TextStyle(
        letterSpacing: 2,
        fontSize: 15,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      )
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View Builder', style: TextStyle(fontSize: 20),),
        backgroundColor: Colors.deepPurple,
        centerTitle: false,
        leading: Icon(Icons.menu),
        actions: [
          Container(
            margin: EdgeInsets.all(7),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(10),
            ),
              child: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo), color: Colors.white,)
          ),
        ],
      ),

      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 3,
            childAspectRatio: 1.4,
          ),
          itemCount: myItem.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                print(myItem[index]['title']);
              },
              onDoubleTap: () {
                print("hello double Tap");
              },
              child: Container(
                margin: EdgeInsets.all(8.0),
                width: double.infinity,
                height: 200.0,
                child: Image.network(
                  myItem[index]['img']!,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }
      ),
    );
  }

}

