import 'package:dr_appointment/home/homePage.dart';
import 'package:flutter/material.dart';
import '../appBar/customAppBar.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        title: 'Sign In',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adi piscing elit. Quis sapien arcu',
                style: TextStyle(color: Color(0xff6E7682), fontSize: 16),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 70.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(children: [
                        const SizedBox(
                          width: 5,
                        ),
                        DropdownButton<String>(
                          value: '+1',
                          onChanged: (String? newValue) {},
                          underline: Container(),
                          items: <String>['+1', '+92', '+91', '+93']
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 1.0,
                          height: 24.0,
                          color: const Color.fromARGB(127, 0, 0, 0),
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 12.0),
                              labelText: 'Mobile Number',
                              labelStyle: TextStyle(
                                  color: Color(0xff0C1037),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 28.0),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  labelText: 'Password',
                  labelStyle: const TextStyle(
                      color: Color(0xff0C1037),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _passwordVisible = !_passwordVisible;
                      });
                    },
                  ),
                ),
                obscureText: !_passwordVisible,
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Text(
                    'Forgot Password?',
                    style: TextStyle(
                      color: Color(0xff6E7682),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomePage()),
                        );
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                            color: const Color(0xff4C5DF4),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("Don't have an account? "),
                  Text(
                    " SIGN UP",
                    style: TextStyle(color: Color(0xff4C5DF4)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
