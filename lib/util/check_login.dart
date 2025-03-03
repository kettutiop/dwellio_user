import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tester/features/login/login_delliew.dart';

void checkLogin(BuildContext context) {
  Future.delayed(const Duration(milliseconds: 100), () {
    User? currentUser = Supabase.instance.client.auth.currentUser;
    if (!(currentUser != null)) {
      Navigator.of(
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => LoginScreen()));
    }
  });
}
