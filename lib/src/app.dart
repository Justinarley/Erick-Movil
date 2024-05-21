import 'package:flutter/material.dart';

class MyAppFront extends StatefulWidget {
  const MyAppFront({super.key});

  @override
  State<MyAppFront> createState() => _MyAppFrontState();
}

class _MyAppFrontState extends State<MyAppFront> {
  late String _nombre;
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFEFEF),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage("Img/perfil1.jpeg"),
                ),
                const SizedBox(height: 20.0),
                const Text(
                  "Bienvenido",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Freeman',
                    fontSize: 24.0,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Inicia sesión para continuar",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Freeman',
                    fontSize: 16.0,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 30.0),
                TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    hintText: "Nombre de usuario",
                    labelText: "Usuario",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black54),
                    suffixIcon: const Icon(Icons.person, color: Colors.black), 
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black), 
                  onSubmitted: (valor) {
                    _nombre = valor;
                    print("El nombre es $_nombre");
                  },
                ),
                const SizedBox(height: 20.0),
                TextField(
                  enableInteractiveSelection: false,
                  decoration: InputDecoration(
                    hintText: "Correo electrónico",
                    labelText: "Email",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black54),
                    suffixIcon: const Icon(Icons.email, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                  onSubmitted: (valor) {
                    _email = valor;
                    print("El correo es $_email");
                  },
                ),
                const SizedBox(height: 20.0),
                TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Contraseña",
                    labelText: "Contraseña",
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Colors.black54),
                    suffixIcon: const Icon(Icons.lock, color: Colors.black),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black),
                  onSubmitted: (valor) {
                    _password = valor;
                    print("La contraseña es $_password");
                  },
                ),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFE94560),
                        fixedSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text("Salir", style: TextStyle(color: Colors.white)),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF53DD6C),
                        fixedSize: const Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: const Text("Siguiente", style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
