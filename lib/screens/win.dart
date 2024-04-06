import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';

class WinningPage extends StatefulWidget {
  const WinningPage({super.key});

  @override
  State<WinningPage> createState() => _WinningPageState();
}

class _WinningPageState extends State<WinningPage> {
  late ConfettiController confettiController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      initController();
    });
    confettiController.play();
  }

  void initController(){
    confettiController = ConfettiController(duration: Duration(seconds: 1));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // image: DecorationImage(image: AssetImage("assets/images/kbc_pink_background.png" ) , fit: BoxFit.cover),
        color: Colors.purpleAccent
      ),
      child: Scaffold(
        floatingActionButton: ElevatedButton(child: Text("Share With Friends"), onPressed: (){},),
        backgroundColor : Colors.transparent,
        body: Stack(
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("CONGRATULATIONS!" , style: TextStyle(fontSize: 30, fontWeight : FontWeight.bold,)),
                  Text("YOUR ANSWER IS CORRECT" , style: TextStyle(fontSize: 17 , fontWeight : FontWeight.w500,)),
                  SizedBox(height: 15,),
                  Text("You Won",style: TextStyle(fontSize: 15 , fontWeight : FontWeight.w400,)),
                  Text("Rs.5,40,000",style: TextStyle(fontSize: 35 , fontWeight : FontWeight.w700,)),
                  SizedBox(height: 25,),
                  Container(
                      padding: EdgeInsets.all(20),
                      child: Image.asset("assets/images/kbc_logo.jpg")) ,
                  ElevatedButton(child: Text("Next"), onPressed: (){},)
                ],
              ),
            ),
            buildConfettiWidget(confettiController, pi / 2),
          ],
        ),
      ),
    );
  }

  Align buildConfettiWidget(controller, double blastDirection){
    return Align(alignment: Alignment.topCenter,
      child: ConfettiWidget(
        maximumSize: Size(40, 30),
          shouldLoop: false,
          confettiController: controller,
        blastDirectionality: BlastDirectionality.explosive,
        maxBlastForce: 20,
        minBlastForce: 8,
        emissionFrequency: 0.2,
        numberOfParticles: 8,
        gravity: 0.01,
      ),
    );
  }
}
