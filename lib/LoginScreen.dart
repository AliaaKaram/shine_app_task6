import 'package:flutter/material.dart';
import 'package:shine_app_task6/HomeScreen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  TextEditingController UsernameController = new TextEditingController();
  TextEditingController PasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: 600,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Icon(
              Icons.diamond_outlined,
              size: 60,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "SHRINE",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                controller: UsernameController,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Username",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextFormField(
                controller: PasswordController,
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  labelText: "Password",
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      UsernameController.clear();
                      PasswordController.text = "";
                    },
                    child: Text(
                      "CANCEL",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(
                  width: 20,
                ),
                TextButton(
                    // style: ButtonStyle(
                    //   backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    //           (Set<MaterialState> states) {
                    //         if (states.contains(MaterialState.hovered))
                    //           return Colors.purpleAccent;
                    //         return Colors
                    //             .white;
                    //       }),
                    // ),
                    onPressed: () {
                      // Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text(
                      "NEXT",
                      style: TextStyle(color: Colors.black),
                    )),
                SizedBox(
                  width: 10,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
