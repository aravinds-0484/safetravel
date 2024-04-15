// ignore_for_file: unused_local_variable, unused_field, unused_import
import 'package:safetravel/auth.dart';
import 'package:firebase_auth/firebase_auth.dart' show FirebaseAuth;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safetravel/page2.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: width * 0.4,
                height: height * 0.5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'LOGO.png',
                      width: width * 0.4,
                      height: height * 0.4,
                    ),
                    SizedBox(height: height * 0.001),
                    Text("Your safest travel partner"),
                  ],
                ),
              ),
              Container(
                width: width * 0.4,
                height: height * 0.2,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (String? value) {},
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        onSaved: (String? value) {},
                        obscureText: true,
                      ),
                      // Add your form fields or other widgets here
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                child: Container(
                  width: 150,
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyPage2()),
                      );
                    },
                    child: Row(children: [
                      SizedBox(width: width * 0.055),
                      Text("SIGN IN")
                    ]),
                  ),
                ),
              ),
              SizedBox(
                  height:
                      16), // Add some space between sign-in button and sign-up text
              SignUpText(
                onPressed: () {
                  // Navigate to sign up page or perform any other action
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextFieldDemo()),
                  );
                  print("Sign up tapped!");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextFieldDemo extends StatelessWidget {
  const TextFieldDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Sign Up",
          style: TextStyle(
            fontFamily: 'Inter.ttf', // Font size
            fontWeight: FontWeight.normal,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(1000, 138, 205, 156),
      ),
      body: const TextFormFieldDemo(),
    );
  }
}

class TextFormFieldDemo extends StatefulWidget {
  const TextFormFieldDemo({Key? key}) : super(key: key);

  @override
  TextFormFieldDemoState createState() => TextFormFieldDemoState();
}

class PersonData {
  String? name = '';
  String? phoneNumber = '';
  String? email = '';
  String password = '';
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    Key? key,
    this.restorationId,
    this.fieldKey,
    this.hintText,
    this.labelText,
    this.helperText,
    this.onSaved,
    this.validator,
    this.onFieldSubmitted,
    this.focusNode,
    this.textInputAction,
  }) : super(key: key);

  final String? restorationId;
  final Key? fieldKey;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> with RestorationMixin {
  final RestorableBool _obscureText = RestorableBool(true);

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_obscureText, 'obscure_text');
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.fieldKey,
      restorationId: 'password_text_field',
      obscureText: _obscureText.value,
      maxLength: 8,
      onSaved: widget.onSaved,
      validator: widget.validator,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        filled: true,
        hintText: widget.hintText,
        labelText: widget.labelText,
        helperText: widget.helperText,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _obscureText.value = !_obscureText.value;
            });
          },
          icon: Icon(
            _obscureText.value ? Icons.visibility : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
}

class TextFormFieldDemoState extends State<TextFormFieldDemo>
    with RestorationMixin {
  PersonData person = PersonData();

  late FocusNode _phoneNumber, _email, _lifeStory, _password, _retypePassword;

  @override
  void initState() {
    super.initState();
    _phoneNumber = FocusNode();
    _email = FocusNode();
    _lifeStory = FocusNode();
    _password = FocusNode();
    _retypePassword = FocusNode();
  }

  @override
  void dispose() {
    _phoneNumber.dispose();
    _email.dispose();
    _lifeStory.dispose();
    _password.dispose();
    _retypePassword.dispose();
    super.dispose();
  }

  @override
  String get restorationId => 'text_field_demo';

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_autoValidateModeIndex, 'autovalidate_mode');
  }

  final RestorableInt _autoValidateModeIndex =
      RestorableInt(AutovalidateMode.disabled.index);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<String>> _passwordFieldKey =
      GlobalKey<FormFieldState<String>>();

  void _handleSubmitted() {
    final form = _formKey.currentState!;
    if (!form.validate()) {
      _autoValidateModeIndex.value =
          AutovalidateMode.always.index; // Start validating on every change.
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Form has errors.'),
        ),
      );
    } else {
      form.save();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Form submitted.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.values[_autoValidateModeIndex.value],
      child: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          TextFormField(
            textCapitalization: TextCapitalization.words,
            decoration: InputDecoration(labelText: 'Name'),
            onSaved: (String? value) {
              person.name = value;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone Number'),
            // keyboardType: TextInputType.phone,
            // onSaved: (String? value) {
            //   person.phoneNumber = value;
            // },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            keyboardType: TextInputType.emailAddress,
            // onSaved: (String? value) {
            //   person.email = value;
            // },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            // onSaved: (String? value) {
            //   person.password = value!;
            // },
            obscureText: true,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Retype Password'),
            obscureText: true,
          ),
          SizedBox(
            height: height * 0.1,
          ),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Color.fromARGB(255, 138, 205,
                    156), // Adjusted opacity to 255 for full opacity
              ),
            ),
            onPressed: _handleSubmitted,
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }
}

class SignUpText extends StatelessWidget {
  final VoidCallback onPressed;

  const SignUpText({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: RichText(
        text: TextSpan(
          text: "Don't have an account? ",
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: "Sign up",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
