// ignore_for_file: unused_element

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:zena_tamkin/shared_widgets/shared_widgets.dart';

///
class RegisterScreen extends StatelessWidget {
  ///
  const RegisterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          ScreenBanner(
            titleText: '',
            svgName: 'create-account.svg',
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 64,
            child: Center(
              child: Text('Sign Up', textScaleFactor: 2),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24),
            child: RegisterForm(),
          ),
        ],
      ),
    );
  }
}

///
class RegisterForm extends StatefulWidget {
  ///
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  bool _passwordVisible = false;
  bool _availableToMentor = false;
  bool _needsMentoring = false;
  bool _acceptedTermsAndConditions = false;
  int? _radiovalue;
  bool registering = false;
  bool signupButtonEnabled = true;

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  String _validateName(String value) {
    if (value.isEmpty) {
      return 'Name cannot be empty';
    }
    return 'null';
  }

  String _validateEmail(String value) {
    if (value.isEmpty) {
      return 'Email cannot be empty';
    }
    return 'null';
  }

  String _validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password cannot be empty';
    }
    return 'null';
  }

  void _handleRadioValueChange(int value) {
    setState(() {
      _radiovalue = value;
      switch (_radiovalue) {
        case 0:
          _availableToMentor = !_availableToMentor;
          break;
        case 1:
          _needsMentoring = !_needsMentoring;
          break;
        case 2:
          _needsMentoring = !_needsMentoring;
          _availableToMentor = !_availableToMentor;
          break;
      }
    });
  }

  void _toggleTermsAndConditions(bool value) {
    setState(() {
      _acceptedTermsAndConditions = !_acceptedTermsAndConditions;
    });
  }

  @override
  Widget build(BuildContext context) {
    const spacing = 12.0;
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: spacing),
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: spacing),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: spacing),
          TextFormField(
            controller: _passwordController,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: _togglePasswordVisibility,
              ),
              labelText: 'Enter password',
              border: const OutlineInputBorder(),
            ),
            obscureText: !_passwordVisible,
          ),
          const SizedBox(height: spacing),
          TextFormField(
            controller: _confirmPasswordController,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: _togglePasswordVisibility,
              ),
              labelText: 'Confirm password',
              border: const OutlineInputBorder(),
            ),
            obscureText: !_passwordVisible,
          ),
          const Padding(
            padding: EdgeInsets.all(8),
            child: Text('Available to be a:'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Radio(
                    value: 0,
                    groupValue: _radiovalue,
                    onChanged: (value) {},
                  ),
                  const Text('Mentor'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: _radiovalue,
                    onChanged: (value) {},
                  ),
                  const Text('Mentee'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: _radiovalue,
                    onChanged: (value) {},
                  ),
                  const Text('Both'),
                ],
              ),
            ],
          ),
          Row(
            children: [
              Checkbox(
                value: _acceptedTermsAndConditions,
                onChanged: (value) {},
              ),
              const Flexible(
                child: ConditionsText(),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                ElevatedButton(
                  child: const Text('Sign up'),
                  onPressed: _acceptedTermsAndConditions && signupButtonEnabled
                      ? () {
                          setState(() {
                            registering = true;
                            signupButtonEnabled = false;
                          });
                        }
                      : null,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// ConditionsText
class ConditionsText extends StatelessWidget {
  ///
  const ConditionsText({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          const TextSpan(
            style: TextStyle(
              color: Colors.black,
            ),
            text: '''
By checking this box, I affirm that I have read and accept to be bound by the '''
                'AnitaB.org ',
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //launch('');
              },
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            text: 'Code of Conduct',
          ),
          const TextSpan(
            style: TextStyle(
              color: Colors.black,
            ),
            text: ', ',
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //launch('');
              },
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            text: 'Terms',
          ),
          const TextSpan(
            style: TextStyle(
              color: Colors.black,
            ),
            text: ', and ',
          ),
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                //launch('');
              },
            style: const TextStyle(
              color: Colors.blue,
              decoration: TextDecoration.underline,
            ),
            text: 'Privacy Policy',
          ),
          const TextSpan(
            style: TextStyle(
              color: Colors.black,
            ),
            text: '''
. Further, I consent to the use of my information for the stated purpose.''',
          ),
        ],
      ),
    );
  }
}
