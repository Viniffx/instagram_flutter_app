import 'package:flutter/material.dart';
import 'package:instagram_flutter/pages/home_page.dart';
import 'package:instagram_flutter/utils/mensagem_util.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 130, 187),
        title: const Text(
          'Instagram',
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              mostrarMensagem(context, 'Adicionar nova postagem');
            },
            icon: const Icon(Icons.add_box_outlined),
          ),
          IconButton(
            onPressed: () {
              mostrarMensagem(context, 'Você não tem mensagens novas');
            },
            icon: const Icon(Icons.send_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login Page',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => const HomePage()),
                );
              },
              child: const Text('Entrar'),
            ),
          ],
        ),
      ),
    );
  }
}