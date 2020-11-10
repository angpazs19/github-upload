import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartSwimming(),
    );
  }
}

class StartSwimming extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Stack(
        children: <Widget>[Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            image: DecorationImage(
                image: AssetImage(
                    'images/NY.jpg'
                ),
                fit: BoxFit.cover
            ),
          ),
        ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  colors: [Color(0xff35CEAE).withOpacity(0.7), Color(0xff005CAD).withOpacity(0.6),]),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
              child: Column(
                children: <Widget>[
                  Center(
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 300),
                        child: Image(
                          image: AssetImage('images/swim_white.png'),
                          height: 105,
                          width: 105,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Text(
                      'Start Swimming!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontFamily: 'Baloo2',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Organize the conversations and the content',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'you share with friends in micro-feeds to',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'navigate life together in a better way.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Rubik',
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  FlatButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpPage()),
                    );
                  },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(150)
                      ),
                      color: Color(0xff640098),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Text(
                          'Use your NYU Email',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Rubik',
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 96, vertical: 5),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rubik',
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        new InkWell(
                          child: new Text(
                            'Log in',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Rubik',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignInPage()),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 115,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'By Continuing you agree to Swim´s ',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rubik',
                            fontSize: 14,
                          ),
                        ),
                        new InkWell(
                          child: Text(
                            'Terms of Use',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Rubik',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            print('hola');
                          },
                        ),
                        SizedBox(
                          width: 3,),
                        Text(
                          'and confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rubik',
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 78),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'that you have read Swim´s ',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rubik',
                            fontSize: 14,
                          ),
                        ),
                        new InkWell(
                          child: Text(
                            'Privacy Policy.',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Rubik',
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            print('hola');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        backgroundColor: Color(0xffFFFFFF),
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,0,325,0),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      color: Color(0xff414A4C),
                      onPressed:(){
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                        Icons.help_outline,
                        color: Color(0xff00A4A1)
                    ),
                    onPressed:(){
                      print('Info');
                    },
                  ),
                ],
              ),
              Container(
                height: 110,
                width: 200,
                child: Image(
                  image: AssetImage('images/swimapp.jpg'),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(52,0,52,15),
                    child: Text(
                      'To create an account, you need to have received an invitation code from one of your friends at NYU and have a valid NYU email',
                      style: TextStyle(
                        fontFamily: 'Rubik',
                        color: Colors.grey.shade700,
                        fontSize: 15,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Invitation code',
                              prefixIcon: Icon(
                                Icons.dialpad,
                                color: Colors.grey,
                                size: 20,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 42, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'you@nyu.edu',
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.grey,
                                size: 20,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 42, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0,20,0,35),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Password',
                                prefixIcon: Icon(
                                  Icons.vpn_key,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    Icons.remove_red_eye,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  onPressed:(){
                                    print('Visible password');
                                  },
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 42, vertical: 10),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(
                                    color: Colors.grey,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide(color: Colors.grey),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 175,
                    height: 45,
                    child: RaisedButton(
                      color:Colors.transparent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                      ),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignInPage()),
                        );
                      },
                      padding: EdgeInsets.all(0),
                      child: Ink(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors:[
                              Color(0xff35CEAE),
                              Color(0xff404080),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                          width: 175,
                          height: 45,
                          constraints: BoxConstraints(maxWidth: 175,minHeight: 45),
                          alignment: Alignment.center,
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Rubik',
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0,165,0,5),
                    child: SizedBox(
                      height: 15,
                      width: 5000,
                      child: Divider(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 39),
                    child: Row(
                      children: [
                        Text(
                          'By signing up, confirm that you agree to our ',
                          style: TextStyle(
                            color: Colors.blueGrey.shade700,
                            fontFamily: 'Rubik',
                            fontSize: 13,
                          ),
                        ),
                        new InkWell(
                          child: Text(
                            'Terms of Use',
                            style: TextStyle(
                              color: Colors.tealAccent.shade700,
                              fontFamily: 'Rubik',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          onTap: () {
                              print('Redirect to Terms of Use');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 66),
                    child: Row(
                      children: [
                        Text(
                          'and have read and understood our',
                          style: TextStyle(
                            color: Colors.blueGrey.shade700,
                            fontFamily: 'Rubik',
                            fontSize: 13,
                          ),
                        ),
                        new InkWell(
                          child: Text(
                            'Privacy Policy',
                            style: TextStyle(
                              color: Colors.tealAccent.shade700,
                              fontFamily: 'Rubik',
                              fontSize: 14,
                              fontWeight: FontWeight.bold,

                            ),
                          ),
                          onTap: () {
                            print('Redirect to Privacy Policy');
                          },
                        ),
                      ],
                    ),
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


class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Color(0xff414A4C),
                  onPressed:(){
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 340, 0, 0),
              child: Center(
                child: new InkWell(
                  child: Text(
                    'Did you forget your password?',
                    style: TextStyle(
                      color: Colors.tealAccent.shade700,
                      fontFamily: 'Rubik',
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ForgotPassword()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,325,0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Color(0xff414A4C),
                    onPressed:(){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Container(
              height: 110,
              width: 200,
              child: Image(
                image: AssetImage('images/swimapp.jpg'),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(52,0,52,15),
                  child: Text(
                    'Enter the reset password code that you received by email, and set your new password',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      color: Colors.grey.shade700,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Form(
                    child: Column(
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Recovery code',
                            prefixIcon: Icon(
                              Icons.dialpad,
                              color: Colors.grey,
                              size: 20,
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 42, vertical: 10),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'you@nyu.edu',
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 42, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,0,0,35),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                color: Colors.grey,
                                size: 20,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.grey,
                                  size: 20,
                                ),
                                onPressed:(){
                                  print('Visible password');
                                },
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 42, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 175,
                  height: 45,
                  child: RaisedButton(
                    color:Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    onPressed: (){
                      print('holi');
                    },
                    padding: EdgeInsets.all(0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors:[
                            Color(0xff35CEAE),
                            Color(0xff404080),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        width: 175,
                        height: 45,
                        constraints: BoxConstraints(maxWidth: 175,minHeight: 45),
                        alignment: Alignment.center,
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0,0,325,0),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Color(0xff414A4C),
                    onPressed:(){
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
            Container(
              height: 110,
              width: 200,
              child: Image(
                image: AssetImage('images/swimapp.jpg'),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(52,0,52,15),
                  child: Text(
                    'Enter a valid email to star the password recovery process',
                    style: TextStyle(
                      fontFamily: 'Rubik',
                      color: Colors.grey.shade700,
                      fontSize: 15,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: Form(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'you@nyu.edu',
                              prefixIcon: Icon(
                                Icons.mail_outline,
                                color: Colors.grey,
                                size: 20,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 42, vertical: 10),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(
                                  color: Colors.grey,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 175,
                  height: 45,
                  child: RaisedButton(
                    color:Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                    onPressed: (){
                      print('holi');
                    },
                    padding: EdgeInsets.all(0),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors:[
                            Color(0xff35CEAE),
                            Color(0xff404080),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        width: 175,
                        height: 45,
                        constraints: BoxConstraints(maxWidth: 175,minHeight: 45),
                        alignment: Alignment.center,
                        child: Text(
                          'Send Email',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Rubik',
                            color: Colors.white,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 420, 0, 0),
                  child: Center(
                    child: new InkWell(
                      child: Text(
                        'I already have a reset password code',
                        style: TextStyle(
                          color: Colors.tealAccent.shade700,
                          fontFamily: 'Rubik',
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ResetPassword()),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

