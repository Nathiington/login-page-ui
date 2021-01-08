import 'package:flutter/material.dart';
import 'Styles.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = false;
  Widget _buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Email',
          style: aLabelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: aBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white,
                ),
                hintText: 'Enter your Email',
                hintStyle: aHintTextStyle),
          ),
        ),
      ],
    );
  }

  Widget _buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: aLabelStyle,
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: aBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                hintText: 'Password',
                hintStyle: aHintTextStyle),
          ),
        ),
      ],
    );
  }

  Widget _buildForgotPassword() {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: () => print('Forgot Password request'),
        child: Text(
          'Forgot Password?',
          style: aLabelStyle,
        ),
        padding: EdgeInsets.only(right: 0.0),
      ),
    );
  }

  Widget _buildRememberMe() {
    return Container(
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
                value: _rememberMe,
                checkColor: Colors.green,
                activeColor: Colors.white,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value;
                  });
                }),
          ),
          Text(
            'Remember Me',
            style: aLabelStyle,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.0),
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => print('Login Button Request'),
        elevation: 5.0,
        padding: EdgeInsets.all(15.0),
        color: Colors.white,
        child: Text(
          'Log In',
          style: TextStyle(
              color: Colors.black87,
              letterSpacing: 1.4,
              fontSize: 18.0,
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildSignIn() {
    return Column(
      children: <Widget>[
        Text(
          ' - OR - ',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Sign in with',
          style: aLabelStyle,
        )
      ],
    );
  }

  _buildSocialButton(AssetImage logo, Function onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              offset: Offset(0, 2),
              blurRadius: 6.0,
            ),
          ],
          image: DecorationImage(
            image: logo,
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButtonRow() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildSocialButton(
            AssetImage('lib/Assets/Facebook.png'),
            () => print('Facebook'),
          ),
          _buildSocialButton(
            AssetImage('lib/Assets/Google.png'),
            () => print('Google'),
          ),
        ],
      ),
    );
  }

  Widget _buildSignUpButton() {
    return GestureDetector(
      onTap: () => print('Signed Up!'),
      child: RichText(
        text:TextSpan(
          children: [
           TextSpan(
              text: 'Don\'t have an account?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.w400
              ),
            ),
            TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
                fontWeight: FontWeight.bold
              )
            ),
          ],
      ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xff398ecb),
                  Color(0xff3962cb),
                  Color(0xff19149c),
                ],
                stops: [0.1, 0.5, 0.9],
              ),
            ),
          ),
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Sign in',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  _buildEmail(),
                  //
                  SizedBox(
                    height: 30.0,
                  ),
                  _buildPassword(),
                  _buildForgotPassword(),
                  _buildRememberMe(),
                  _buildLoginButton(),
                  _buildSignIn(),
                  _buildSocialButtonRow(),
                  _buildSignUpButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
