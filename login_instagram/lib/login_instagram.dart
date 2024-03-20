import 'package:flutter/material.dart';

class LoginInstagram extends StatefulWidget {
  @override
  State<LoginInstagram> createState() => _LoginInstagramState();
}

class _LoginInstagramState extends State<LoginInstagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(child: Container(), flex: 2),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: centerWidget(),
            ),
            Flexible(child: Container(), flex: 2),
            const Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: bottomWidget(),
            ),
          ],
        ),
      ),
    );
  }

  Widget centerWidget() {
    return Column(
      children: [
        Image.asset(
          "assets/images/insta.png",
          height: 100,
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: "Phone number, username or email",
              border: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              filled: true,
              contentPadding: const EdgeInsets.all(7)),
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: "Password",
              border: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context),
              ),
              filled: true,
              suffixIcon: const Icon(Icons.remove_red_eye),
              contentPadding: const EdgeInsets.all(7)),
          obscureText: true,
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Forgot Password?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: const Text("Log in"),
          ),
        ),
        const SizedBox(height: 26),
        const Row(
          children: [
            Flexible(
                child: Divider(
              thickness: 2,
            )),
            Text(
              '  OR  ',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Flexible(
                child: Divider(
              thickness: 2,
            )),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/face.png', height: 35),
            const Text(
              ' Log in with Facebook ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget bottomWidget() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don't have an account  "),
        Text('Sign up.',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
      ],
    );
  }
}
