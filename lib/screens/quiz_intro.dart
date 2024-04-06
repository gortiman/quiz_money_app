import 'package:flutter/material.dart';
 class QuizIntro extends StatelessWidget {
   const QuizIntro({super.key});

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
       floatingActionButton: ElevatedButton(
         onPressed: () {  },
         child: Text("Start Quiz",
         style:TextStyle(
           fontSize: 20,
         ),),
       ),
       appBar: AppBar(title: Text("KBC Quiz App")),
       body: SingleChildScrollView(
         child: Container(
           padding:  EdgeInsets.only(bottom: 40),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                 width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.all(20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Text("Quiz Name",
                   textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 30 ,
                       fontWeight: FontWeight.w500),
                     ),
                   ],
                 ),
               ),
               Image.network("data:image/jpeg;base64,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",
                 fit: BoxFit.cover,height: 230,width: MediaQuery.of(context).size.width,),
               Container(
                 padding: EdgeInsets.all(18),
                 child:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.topic_outlined),
                         SizedBox(width: 6,),
                         Text("Related To -" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                       ],
                     ),
                     Text("Science , Space , Astronmy , Rocket , ISRO" , style: TextStyle(fontSize: 17),)
                   ],),
               ) ,
               Container(
                 padding: EdgeInsets.all(18),
                 child:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [

                     Row(
                       children: [
                         Icon(Icons.topic_outlined),
                         SizedBox(width: 6,),
                         Text("Duration -" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                       ],
                     ),
                     Text("10 Minutes" ,textAlign: TextAlign.left, style: TextStyle(fontSize: 17),)
                   ],),
               ) ,
               Container(
                 padding: EdgeInsets.all(18),
                 child:
                 Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Row(
                       children: [
                         Icon(Icons.topic_outlined),
                         SizedBox(width: 6,),
                         Text("About Quiz -" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),)
                       ],
                     ),
                     Text("fcmoaojfd josdjofjsj jidgj iodjj ijj gjedjrrjdt jojgr jjrdj tldjtlhijrldj tljtl jhorodjtdhjpr jpj fcmoaojfd josdjofjsj jidgj iodjj ijj gjedjrrjdt jojgr jjrdj tldjtlhijrldj tljtl jhorodjtdhjpr jpj fcmoaojfd josdjofjsj jidgj iodjj ijj gjedjrrjdt jojgr jjrdj tldjtlhijrldj tljtl jhorodjtdhjpr jpj fcmoaojfd josdjofjsj jidgj iodjj ijj gjedjrrjdt jojgr jjrdj tldjtlhijrldj tljtl jhorodjtdhjpr jpj fcmoaojfd josdjofjsj jidgj iodjj ijj gjedjrrjdt jojgr jjrdj tldjtlhijrldj tljtl jhorodjtdhjpr jpj fcmoaojfd josdjofjsj jidgj iodjj ijj gjedjrrjdt jojgr jjrdj tldjtlhijrldj tljtl jhorodjtdhjpr jpj " , style: TextStyle(fontSize: 17),)
                   ],),
               )
             ],
           )
         ),
       ),
     );
   }
 }
