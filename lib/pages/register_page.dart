import 'package:flutter/material.dart';
import 'package:notes_app/widgets/CustomAlert_widget.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void dispose() {
    _formKey.currentState!.dispose();
    super.dispose();
  }

  var _emailController = TextEditingController();
  var _passController = TextEditingController();
  var _nameController = TextEditingController();
  var _formKey = new GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey.shade100,
        body: Center(
          child: SizedBox(
            height: 420,
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
                            Text("User Register",
                                style: Theme.of(context).textTheme.headline6),
                            SizedBox(height: 50),
                            TextFormField(
                                controller: _nameController,
                                decoration: InputDecoration(
                                  labelText: "Username: ",
                                ),
                                autovalidateMode: AutovalidateMode.disabled,
                                validator: (String? value) {
                                  return (value!.isEmpty)
                                      ? "Enter Username"
                                      : null;
                                }),
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
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  TextButton(
                                    onPressed: () {
                                      //_formKey.currentState!.validate();
                                      onAlertWait(context);
                                    },
                                    child: Text("Register"),
                                    style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.purple),
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
