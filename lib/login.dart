import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formstate = GlobalKey<FormState>();
  bool statusRedEye = true;
  String? email, password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      key: _formstate,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        behavior: HitTestBehavior.opaque,
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            const SizedBox(
              width: 8.0,
              height: 16.0,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Image.network(
                  'https://www.rmutt.ac.th/wp-content/uploads/2021/02/20210202-logoRMUTT-color-01-590x1024.png'),
              height: 280,
              width: 280,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ชื่อระบบ ',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 8.0,
              height: 16.0,
            ),
            TextFormField(
              onChanged: (value) => email = value.trim(),
              validator: (value) {
                if (value!.isEmpty || !value.contains('@'))
                  return 'โปรดกรอกอีเมลให้ถูกต้อง';
                else
                  return null;
              },
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                labelText: 'คุณเมล',
                icon: Icon(Icons.email),
                hintText: 'คุณเมล@อะไร.com',
              ),
            ),
            const SizedBox(
              width: 8.0,
              height: 16.0,
            ),
            TextFormField(
              onChanged: (value) => password = value.trim(),
              validator: (value) {
                if (value!.length < 6)
                  return 'โปรดกรอกพาสเวิร์ด 6 ตัวขึ้นไป';
                else
                  return null;
              },
              obscureText: statusRedEye,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      statusRedEye = !statusRedEye;
                    });
                  },
                  icon: statusRedEye
                      ? Icon(
                          Icons.remove_red_eye,
                        )
                      : Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                ),
                labelText: 'พาสเวิร์ด',
                icon: Icon(Icons.lock),
              ),
            ),
            const SizedBox(
              width: 8.0,
              height: 16.0,
            ),
          
Container(
	margin: EdgeInsets.all(15),
	width: 280,
	height: 52,
	decoration: BoxDecoration(
	  gradient: LinearGradient(
		colors: [Color.fromARGB(255, 255, 230, 0), Color(0xffff7eb3)],
		begin: FractionalOffset.centerLeft,
		end: FractionalOffset.centerRight,
	  ),
	),
	child: TextButton(
	  child: Text(
		'Login',
		style: TextStyle(color: Colors.white),
	  ),
	  onPressed: () => {},
	  ),
	),
          ],
        ),
      ),
    ));
  }
}
