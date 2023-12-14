import 'package:flutter/material.dart';
import 'package:bitirme_projesi/data/app_theme.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.primaryColor,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/tobeto_arka_plan.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      // Logo
                      Image.asset('images/tobeto_logo.png', width: 300.0, height: 150.0),
                      SizedBox(height: 20.0),
                      // Kullanıcı Kodu TextField
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Kullanıcı Kodu',
                          prefixIcon: Icon(Icons.person_2_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 8.0),
                      // Parola TextField
                      TextField(

                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Parola',
                          prefixIcon: Icon(Icons.lock_outline),
                          // Parola alanına göz ikonu ekleniyor
                          suffixIcon: IconButton(
                            icon: Icon(Icons.visibility_off_outlined),
                            onPressed: () {
                              // Göz ikonuna basıldığında yapılacak işlem
                            },
                          ),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 24.0),
                      // Giriş Yap Butonu
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          minimumSize: Size(double.infinity, 36), // Butonun minimum boyutu
                        ),
                        child: Text('GİRİŞ YAP'),
                        onPressed: () {
                          // Butona tıklandığında yapılacak işlemler
                        },
                      ),
                      TextButton(
                        child: Text('Parolamı Unuttum'),
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                        ),
                        onPressed: () {
                          // Parolamı Unuttum'a tıklandığında yapılacak işlemler
                        },
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
