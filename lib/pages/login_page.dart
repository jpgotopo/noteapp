import 'package:flutter/material.dart';
import 'package:notes_app/widgets/customHyperLink_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    _formKey.currentState!.dispose();
    super.dispose();
  }

  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  var _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: Center(
          child: SizedBox(
            height: 300,
            width: 280,
            child: Card(
                elevation: 20.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Welcome to Note App",
                                style: Theme.of(context).textTheme.headline6),
                            TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: "Email: ",
                                  hintText: "example@example.com",
                                ),
                                autovalidateMode: AutovalidateMode.disabled,
                                validator: (String? value) {
                                  return (!value!.contains("@"))
                                      ? "Enter valid Email"
                                      : null;
                                }),
                            TextFormField(
                                obscureText: true,
                                controller: _passController,
                                decoration: InputDecoration(
                                  labelText: "Password: ",
                                ),
                                autovalidateMode: AutovalidateMode.disabled,
                                validator: (String? value) {
                                  return (value!.isEmpty)
                                      ? "Enter Password"
                                      : null;
                                }),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomHyperLink(
                                      label: "Create Account",
                                      callback: () {},
                                      hoverColor: Colors.purple,
                                      defaultColor: Colors.blue),
                                  TextButton(
                                    onPressed: () {
                                      _formKey.currentState!.validate();
                                    },
                                    child: Text("Login"),
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.blue),
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.lightBlue.shade100)),
                                  )
                                ],
                              ),
                            )
                          ],
                        )))),
          ),
        ));
  }
}


