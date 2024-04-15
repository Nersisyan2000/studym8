import 'package:flutter/material.dart';
import 'package:flutter_application_2/index.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key, required this.isLogin});

  final bool isLogin;

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  RegExp regex = RegExp(passwordRegExp.localized);
  bool showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  decoration: emailInputStyle,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return emptyError.localized;
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16.0,
                ),
                TextFormField(
                    obscureText: showPassword,
                    decoration: passwordInputStyle.copyWith(
                        suffixIcon: IconButton(
                      icon: Icon(
                        showPassword
                            ? Icons.visibility_off_outlined
                            : Icons.remove_red_eye_outlined,
                        color: Colors.black,
                      ),
                      onPressed: () =>
                          setState(() => showPassword = !showPassword),
                    )),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return emptyError.localized;
                      } else if (!regex.hasMatch(value)) {
                        return passwordValidationMessage.localized;
                      }
                      return null;
                    }),
              ],
            )),
        const SizedBox(
          height: 56.0,
        ),
        CustomElevatedButton.purpleButton(
          onPress: () {
            if (_formKey.currentState!.validate()) {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(content: Text('Processing Data')),
              // );
              Navigator.pushNamed(context, profileRoute);
            }
          },
          title: !widget.isLogin ? signUp.localized : login.localized,
        ),
      ],
    );
  }
}
