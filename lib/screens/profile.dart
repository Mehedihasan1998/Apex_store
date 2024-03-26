import 'package:apex_store/common/common.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              maxRadius: 70,
              child: ClipOval(
                child: Image.network("${maleAvaterImage}",),
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Name: ',
                style: myStyle(20, Colors.white, FontWeight.bold), /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: 'Md. Mehedi Hasan',
                      style: myStyle(18, Colors.black)),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: 'Email: ',
                style: myStyle(20, Colors.white, FontWeight.bold), /*defining default style is optional */
                children: <TextSpan>[
                  TextSpan(
                      text: 'mehedi5477@gmail.com',
                      style: myStyle(18, Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 15,),
            MaterialButton(
              onPressed: (){},
              color: primaryColor,
              minWidth: MediaQuery.of(context).size.width*0.9,
              padding: EdgeInsets.all(10),
              child: Text("Log out", style: myStyle(18, Colors.white, FontWeight.bold),),
            )


          ],
        ),
      ),
    );
  }
}
