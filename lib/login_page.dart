import 'package:flutter/material.dart';
import 'package:flutter_application_1/account.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController name = TextEditingController();
  TextEditingController psw = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(35.0),
              child: CircleAvatar(
                maxRadius: 70,
                backgroundImage: AssetImage("assets/myavatar.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: psw,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink,
                ),
                onPressed: () {
                  if (name.text == "Şilan" && psw.text == "4972") {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Account())));
                  } else {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return AlertDialog(
                            title: Text("HATA!"),
                            content: Text("Hatalı Giriş Denemesi"),
                          );
                        }));
                  }
                },
                child: const Text(
                  "LOG IN",
                  style: TextStyle(fontSize: 25),
                )),
            IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(SnackBar(content: Text("Şifre Sıfırla")));
                },
                icon: Icon(Icons.question_mark))
          ],
        ),
      ),
    );
  }
}
