import 'package:fast_food_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:fast_food_app/screens/home_screen.dart';



class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: const Text(
          "FastFoodOrders",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 80.0),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Digite um email válido'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 30, bottom: 0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                    hintText: 'Digite a sua senha'),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              margin:
                  const EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 15),
              height: 50,
              width: 420,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.lightGreen),
                ),
                child: const Text('Entrar'),
                onPressed: () {
                  // Lógica de autenticação do usuário
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
              ),
            ),
            const Text(
              'Esqueceu a senha?',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            const SizedBox(
              height: 130,
            ),
            const Text(
              '-------------------- ou --------------------',
              style: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            GestureDetector(
              onTap: () {
                // Navegar para a página de cadastro
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: const Text(
                'Novo Usuário? Crie uma Conta',
                style: TextStyle(color: Colors.blue, fontSize: 15),
              ),
            ),
            const Text(
              'Ao usar este APP você concorda com os termos de uso',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}







// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Login'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Entrar'),
//           onPressed: () {
//             // Lógica de autenticação do usuário
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => HomeScreen()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
