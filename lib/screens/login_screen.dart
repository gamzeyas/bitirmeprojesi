// import 'package:bitirme_projesi/widgets/drawer_widget.dart';
import 'package:bitirme_projesi/screens/home_screen.dart';
import 'package:flutter/material.dart';

// import 'package:bitirme_projesi/data/app_theme.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tobeto_arka_plan.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                color: Theme.of(context).colorScheme.background,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // Logo
                      Image.asset('images/tobeto_logo.png',
                          width: 300.0, height: 150.0),
                      const SizedBox(height: 20.0),
                      // Kullanıcı Kodu TextField
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Kullanıcı Kodu',
                          prefixIcon: Icon(Icons.person_2_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      // Parola TextField
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Parola',
                          prefixIcon: const Icon(Icons.lock_outline),
                          // Parola alanına göz ikonu ekleniyor
                          suffixIcon: IconButton(
                            icon: const Icon(Icons.visibility_off_outlined),
                            onPressed: () {
                              // Göz ikonuna basıldığında yapılacak işlem
                            },
                          ),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      // Giriş Yap Butonu
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: const Size(
                              double.infinity, 36), // Butonun minimum boyutu
                        ),
                        child: const Text('GİRİŞ YAP'),
                        onPressed: () {
                          Navigator.pushReplacement(
                            //pushReplacement geri butonu koymadan diğer sayfaya geçer!
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        },
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          // Parolamı Unuttum'a tıklandığında yapılacak işlemler
                        },
                        child: const Text('Parolamı Unuttum'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
