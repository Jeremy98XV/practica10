import 'package:flutter/material.dart';
import 'package:practica10/widgets/custom_input_widget.dart';

import 'home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> resultadosFormulario = {
      'username': 'example',
      'password': '1234',
    };

    return Scaffold(
      appBar: AppBar(title: const Text('Login'), backgroundColor: Colors.green,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputWidget(
                  labelText: 'Enter your username',
                  hintText: 'Enter your username',
                  icon: Icons.person,
                  teclado: TextInputType.name,
                  formProperty: 'username',
                  formValues: resultadosFormulario,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomInputWidget(
                  labelText: 'Enter your password',
                  hintText: 'Enter your password',
                  icon: Icons.password,
                  obscureText: true,
                  formProperty: 'password',
                  formValues: resultadosFormulario,
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent,
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                    if (myFormKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Home(
                            username: resultadosFormulario['username']!,
                            password: resultadosFormulario['password']!,
                          ),
                        ),
                        (route) => false,
                      );
                    }
                  },
                  child: const Center(
                    child: Text('Login'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
