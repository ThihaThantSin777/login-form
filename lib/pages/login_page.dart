import 'package:flutter/material.dart';
import 'package:login_form/constant/asset_images.dart';
import 'package:login_form/constant/colors.dart';
import 'package:login_form/constant/dimens.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          AppLogoSessionView(),
          Align(
            alignment: Alignment.bottomCenter,
            child: SignInSessionView(),
          )
        ],
      ),
    );
  }
}

class SignInSessionView extends StatelessWidget {
  const SignInSessionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      color: kWhiteColor,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Sign In",
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          CircleIconAndTextView(
            icon: Icons.person,
            title: 'user name',
          ),
          SizedBox(
            height: 20,
          ),
          CircleIconAndTextView(
            icon: Icons.lock,
            title: 'password',
          ),
          SizedBox(
            height: 20,
          ),
          RememberMeAndForgetPasswordView(),
          SizedBox(
            height: 20,
          ),
          SigInInButtonView(),
          SizedBox(
            height: 20,
          ),
          StillNotConnectAndSignUpView(),
          SizedBox(
            height: 40,
          ),
          DividerOrView(),
          SizedBox(
            height: 20,
          ),
          FacebookAndTwitterImageView()
        ],
      ),
    );
  }
}

class FacebookAndTwitterImageView extends StatelessWidget {
  const FacebookAndTwitterImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(width: 50, height: 50, child: Image.asset(kFBPath)),
        const SizedBox(
          width: 10,
        ),
        SizedBox(width: 40, height: 40, child: Image.asset(kTwitterPath)),
      ],
    );
  }
}

class DividerOrView extends StatelessWidget {
  const DividerOrView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 50,
          child: Divider(
            color: Colors.black45,
            thickness: 1,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          alignment: Alignment.center,
          width: 30,
          height: 30,
          decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.black38)),
          child: Text(
            'OR',
            style: TextStyle(fontSize: 11),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        SizedBox(
          width: 50,
          child: Divider(
            color: Colors.black45,
            thickness: 1,
          ),
        )
      ],
    );
  }
}

class StillNotConnectAndSignUpView extends StatelessWidget {
  const StillNotConnectAndSignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Still not connect?'),
        SizedBox(
          width: 10,
        ),
        Text(
          'Sign Up',
          style: TextStyle(color: kPurpleColor),
        )
      ],
    );
  }
}

class SigInInButtonView extends StatelessWidget {
  const SigInInButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
            kPinkColor,
            kPurpleColor,
          ])),
      child: Text(
        'SignIn',
        style: TextStyle(color: kWhiteColor),
      ),
    );
  }
}

class RememberMeAndForgetPasswordView extends StatelessWidget {
  const RememberMeAndForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RememberMeView(),
        Text(
          "Forget Password",
          style: TextStyle(color: kPurpleColor, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class RememberMeView extends StatelessWidget {
  const RememberMeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), border: Border.all(color: Colors.black38)),
        ),
        const SizedBox(
          width: 10,
        ),
        const Text("Remember me")
      ],
    );
  }
}

class CircleIconAndTextView extends StatelessWidget {
  const CircleIconAndTextView({super.key, required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30), border: Border.all(color: Colors.black12)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: kPurpleColor,
            child: Icon(icon),
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: const TextStyle(color: Colors.black45, fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}

class AppLogoSessionView extends StatelessWidget {
  const AppLogoSessionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(gradient: LinearGradient(colors: [kPinkColor, kPurpleColor])),
            child: const AppLogoImageView(),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            color: kLightWhiteColor,
          ),
        )
      ],
    );
  }
}

class AppLogoImageView extends StatelessWidget {
  const AppLogoImageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kAppLogoSize,
      height: kAppLogoSize,
      child: Image.asset(kAppLogoPath),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [SizedBox(), Container()],
    );
  }
}
