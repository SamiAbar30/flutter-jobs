import 'package:flutter/material.dart';
import 'package:pfe_flutter/pages/About.dart';
import 'package:pfe_flutter/pages/Accueil.dart';
import 'package:pfe_flutter/pages/Devis.dart';
import 'package:pfe_flutter/pages/Contact.dart';
import 'package:pfe_flutter/pages/Auth/ForgetPass.dart';
import 'package:pfe_flutter/pages/Auth/Inscription.dart';
import 'package:pfe_flutter/pages/Auth/Login.dart';
import 'package:pfe_flutter/pages/Auth/RestPass.dart';
void main() => runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Accueil(),
      '/About': (context) => About(),
      '/Accueil': (context) => Accueil(),
      '/Devis': (context) => Devis(),
      '/Contact': (context) => Contact(),
      '/ForgetPass': (context) => ForgetPass(),
      '/Inscription': (context) => Inscription(),
      '/Login': (context) => Login(),
      '/RestPass': (context) => RestPass(),
    }
));