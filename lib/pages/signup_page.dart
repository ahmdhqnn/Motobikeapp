
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:motobike/widgets/button_primary.dart';
import 'package:motobike/widgets/button_secondary.dart';
import 'package:motobike/widgets/input.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final editName = TextEditingController();
  final editEmail = TextEditingController();
  final editPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 0,
        ),
        children: [
          Gap(100),
          Image.asset(
            'assets/logo_text.png',
            height: 38,
            width: 171,
          ),
          const Gap(70),
          const Text(
            'Sign Up Account',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: Color(0xff070623),
            ),
          ),
          Gap(30),
          const Text(
            'Complete Name',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff070623),
            ),
          ),
        const Gap(12),
        Input(icon: 'assets/ic_profile.png', hint: 'Write your real name', editingController: editName,
        ),
        Gap(20),
          const Text(
            'Email Address',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff070623),
            ),
          ),
          const Gap(12),
        Input(icon: 'assets/ic_email.png', hint: 'Write your real email', editingController: editEmail,
        ),
        Gap(20),
          const Text(
            'Password',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xff070623),
            ),
          ),
          const Gap(12),
        Input(icon: 'assets/ic_key.png', hint: 'Write your password', editingController: editPassword, obsecure: true,
        ),
        const Gap(30),
        ButtonPrimary(
          text: 'Create New Account',
          onTap: () {},
          ),
          const Gap(30),
          const DottedLine(
            dashLength: 6,
            dashGapLength: 6,
            dashColor: Color(0xffCECED5),
          ),
          const Gap(30),
          ButtonSecondary(
          text: 'Sign In',
          onTap: () {},
          ),
          Gap(30),
        ],
      ),
    );
  }
}