import 'package:flutter/material.dart';
import 'package:practica10/pages/login.dart';

class Home extends StatelessWidget {
  final String username;
  final String password;

  const Home({super.key, required this.username, required this.password});

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text('Bienvenido, $email'),
//       backgroundColor: Colors.green,
//     ),
//     backgroundColor: Colors.blue.shade50,
//     body: Center(
//       child: Text(
//         "Su correo es:  $email\nSu contraseña es:  $password",
//         style: const TextStyle(
//           fontSize: 50,
//         ),
//       ),
//     ),
//   );
// }
//

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home'), backgroundColor: Colors.green,),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text.rich(
              TextSpan(
                style: TextStyle(fontSize:30 ),
                children: <TextSpan>[
                  TextSpan(text: 'You have entered this username:\n\n'),
                  TextSpan(
                      text: '$username \n\n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                  TextSpan(text: 'You have entered this password:\n\n'),
                  TextSpan(
                      text: '$password \n',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 300,vertical: 10),
            child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.greenAccent,
                    ),
                    onPressed: () { 
                     Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Login(
                           
                          ),
                        ),
                        (route) => false,
                      );                                   
                        
                      
                    },
                    child: const Center(
                      child: Text('Go back'),
                    ),
                  ),
          )
          ],
        ),
      ),
    );
  }
//
// @override
// Widget build(BuildContext context) {
//   return Column(children: [
//     const Center(
//       child: Text("You have entered this username:"),
//     ),
//     Center(child: Text('$username')),
//     const Center(
//       child: Text("You have entered this password:"),
//     ),
//      Center(child: Text('$password')),
//   ]);
// }
//}

}
