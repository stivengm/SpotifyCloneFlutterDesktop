import 'package:flutter/material.dart';
import 'package:spotify_clone_flutter/core/theme/theme_style.dart';
import 'package:spotify_clone_flutter/gui/widgets/primary_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({ Key? key }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {

  bool isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B1B),
      body: _body(),
    );
  }

  Widget _body() {
    Size media = MediaQuery.of(context).size;
    return Stack(
      children: [
        Center(
          child: Container(
            height: media.height * .5,
            width: media.width * .38,
            padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 30.0),
            decoration: BoxDecoration(
              color: const Color(0xFF0D0D0D),
              borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset('assets/logo_spotify.png',width: 115.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: Text("Millones de canciones en Spotify.", style: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, fontSize: 35.0), textAlign: TextAlign.center, maxLines: 3, overflow: TextOverflow.ellipsis,),
                ),
                
                const SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: 350.0,
                  height: 50.0,
                  child: PrimaryButton(text: "Iniciar sesión", onPressed: () {}, color: backgroundColor,),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                RichText(
                  text: const TextSpan(
                    text: "¿No tienes cuenta? ",
                    children: [
                      TextSpan(
                        text: "REGÍSTRATE",
                        style: TextStyle(
                          decoration: TextDecoration.underline
                        )
                      )
                    ]
                  )
                )
              ],
            ),
          ),
        ),
        // Container(
        //   width: media.width * .3,
        //   
        //   decoration: const BoxDecoration(
        //     color: Color(0xFF0D0D0D)
        //   ),
        // ),
        
      ],
    );
  }
}