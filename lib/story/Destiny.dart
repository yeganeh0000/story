
import 'package:flutter/material.dart';

import 'StoryBrain.dart';

class Destiny extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}

//TODO: Step 9 - Create a new storyBrain object from the StoryBrain class.
StoryBrain storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        // color: Colors.grey.shade300,
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            // TODO: Step 1 - Add a linear gradient background to the container, using decoration property which takes a BoxDecoration. You can use Grey (shade 300), Pink (shade 900) and Deep Purple colors.
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors:[
              Colors.grey.shade300,
              Colors.lightGreen.shade900,
              Colors.green,
            ],
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    //TODO: Step 10 - use the storyBrain to get the first story title and display it in this Text Widget.
                    storyBrain.getStory(),

                    //TODO: Step 30.A - use textDirection to display the text in a Right to Left direction.
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    //Choice 1 made by user.
                    //TODO: Step 18 - Call the nextStory() method from storyBrain and pass the number 1 as the choice made by the user.
                    storyBrain.nextStory(1);
                    setState(() {

                    });
                    // setState(() {
                    //   sto
                    // });
                    //TODO: Step 24 - Run the app and try to figure out what code you need to add to this file to make the story change when you press on the choice buttons. (What code should you use to see changes live)
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.tealAccent[700],
                    //TODO: Step 31.A use the shape property with RoundedRectangleBorder to give the text a rounded corner of 22 points.
                  ),
                  child: Text(
                    //TODO: Step 13 - Use the storyBrain to get the text for choice 1.
                    storyBrain.getChoice1(),
                    //TODO: Step 30.B - use textDirection to display the text in a Right to Left direction.

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Expanded(
                flex: 2,
                //TODO: Step 26 - Use a Flutter Visibility Widget to wrap this TextButton.
                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: Visibility(
                  visible: storyBrain.buttonShouldBeVisible(),
                  child: TextButton(
                    onPressed: () {
                      //Choice 2 made by user.
                      //TODO: Step 19 - Call the nextStory() method from storyBrain and pass the number 2 as the choice made by the user.
                      storyBrain.nextStory(2);
                      setState(() {

                      });
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.deepOrange,
                      //TODO: Step 31.B use the shape property with RoundedRectangleBorder to give the text a rounded corner of 22 points.
                    ),
                    child: Text(
                      //TODO: Step 14 - Use the storyBrain to get the text for choice 2.
                      storyBrain.getChoice2(),
                      //TODO: Step 30.B - use textDirection to display the text in a Right to Left direction.

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
