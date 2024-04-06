import 'package:flutter/material.dart';

class LifelineDrawer extends StatefulWidget {
  const LifelineDrawer({super.key});

  @override
  State<LifelineDrawer> createState() => _LifelineDrawerState();
}

class _LifelineDrawerState extends State<LifelineDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Container( margin: EdgeInsets.symmetric(vertical: 12),  child: Text("LifeLine" , style: TextStyle(fontSize: 20 ,fontWeight : FontWeight.bold,))),
            Row(
              mainAxisAlignment : MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                          padding : EdgeInsets.all(12),
                          decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.purpleAccent),
                          child : Icon(Icons.people ,size : 32,color : Colors.white)
                      ),
                    ),
                    SizedBox(height:5),
                    Text("Audience\n Poll" , textAlign : TextAlign.center),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                          padding : EdgeInsets.all(12),
                          decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.black54),
                          child : Icon(Icons.change_circle ,size : 32,color : Colors.white)
                      ),
                    ),
                    SizedBox(height:5),
                    Text("Joker\n Question" , textAlign : TextAlign.center),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                          padding : EdgeInsets.all(12),
                          decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.purpleAccent),
                          child : Icon(Icons.two_k_plus_sharp ,size : 32,color : Colors.white)
                      ),
                    ),
                    SizedBox(height:5),
                    Text("Double\n Dip" , textAlign : TextAlign.center),
                  ],
                ),
                Column(
                  children: [
                    Card(
                      elevation: 12,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                      child: Container(
                          padding : EdgeInsets.all(12),
                          decoration: BoxDecoration(shape: BoxShape.circle , color: Colors.purpleAccent),
                          child : Icon(Icons.desktop_mac ,size : 32,color : Colors.white)
                      ),
                    ),
                    SizedBox(height:5),
                    Text("Ask The\n Expert" , textAlign : TextAlign.center),
                  ],
                ),

              ],
            ),
            SizedBox(height: 5),
            Divider(color: Colors.black12 , thickness: 1,)
          ],
        ),
      ),

    );
  }
}

