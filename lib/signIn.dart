import 'package:d_input/d_input.dart';
import 'package:flutter/material.dart';


class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SignIn/SignUp"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text("This is the final page of the code demo. Many aspects of the prototype have been incorporated into this app", style: TextStyle(fontSize: 25)),
          Card(
            color: Color.fromARGB(255, 18, 132, 184),
            shadowColor: Color.fromARGB(255, 255, 0, 0),
            child: SizedBox(
              width: 200,
              height: 150,
              child: Center(
                  child: Text(
                "Hey there! \n Welcome to the sign in and sign up page. We are happy to have you",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 16),
              )),
            ),
          ),
          const SizedBox(height: 16),
          DInput(
            controller: TextEditingController(),
            hint: 'example@mail.com',
            label: 'Label 5',
            isRequired: true,
            title: 'Email address',
          ),
          const SizedBox(height: 16),
          DInput(
            controller: TextEditingController(),
            maxLine: 10,
            minLine: 5,
            title: 'Password',
            hint: '*********',
          ),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: () {
            // Validate returns true if the form is valid, or false otherwise.
            // if (_formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            // ScaffoldMessenger.of(context).showSnackBar(
            // const SnackBar(content: Text('Processing Data')),
            // );
            const SnackBar(content: Text('Processing Data'));
          },

              // },
              child: const Text('Sign In'),
              ),
        ],
      ),
      // ),
    );
  }
}
