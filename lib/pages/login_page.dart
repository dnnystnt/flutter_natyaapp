import 'package:flutter/material.dart';
import 'package:flutter_natyaapp/shared/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // set the Parameter for CheckboxListTile Here
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 350,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/natyalogoone.png',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                TextField(
                  // controller: usernameEmailController,
                  decoration: InputDecoration(
                    label: Text('Email / Username'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  // controller: passwordController,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20),
                CheckboxListTile(
                  contentPadding: EdgeInsets.all(0),
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue;
                    });
                  },
                  activeColor: KPrimaryColor,
                  checkColor: KWhiteBackgroundColor,
                  title: Text(
                    'Remember Me',
                    style: KTitleTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                  controlAffinity: ListTileControlAffinity.leading,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: KDescTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Click Here',
                        style: KPrimaryTextStyle.copyWith(
                          decoration: TextDecoration.underline,
                          fontWeight: semiBold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 140),
                Container(
                  width: 395,
                  height: 68,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home-page');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: KPrimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: KWhiteTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: semiBold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
