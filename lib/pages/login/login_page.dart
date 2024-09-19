import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idc_client_app/core/constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColors.primary,
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 900,
          height: 600,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(0, 0, 0, 0).withOpacity(1),
                  offset: const Offset(-3, 3),
                  blurRadius: 19,
                  spreadRadius: -7,
                )
              ]),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 65),
                width: 380,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome to",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    const Text(
                      "Acuoo",
                      style:
                          TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    _UsernameTextfield(
                      textController: _username,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    _PassswordTextfield(
                      textcontroller: _password,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    _LoginButton(
                      onpressed: () {
                        print("test");
                      },
                    )
                  ],
                ),
              ),
              Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(10)),
                width: 520,
                height: 600,
                // color: Colors.red,
                child: Stack(
                  children: [
                    Positioned(
                        right: 0,
                        child: Container(
                          decoration: const BoxDecoration(
                              color: ConstColors.primary,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10))),
                          width: 70,
                          height: 594,
                        )),
                    Positioned(
                        height: 600,
                        // bottom: ,
                        // right: -1,
                        left: 0,
                        top: 0,
                        child: ClipRRect(
                          // borderRadius:
                          //     BorderRadius.only(topRight: Radius.circular(10)),
                          child: SvgPicture.asset(
                            "assets/login_vector.svg",
                            height: 600,
                            width: 520,

                            // width: double.infinity,
                          ),
                        )),
                    const Positioned(
                        left: 100,
                        top: 100,
                        child: SizedBox(
                          width: 400,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "About IDC",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. ",
                                style: TextStyle(
                                  color: Color.fromARGB(150, 255, 255, 255),
                                  fontSize: 14,
                                ),
                                softWrap: true,
                              ),
                            ],
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginButton extends StatelessWidget {
  final void Function() onpressed;
  const _LoginButton({
    required this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            backgroundColor: ConstColors.primary),
        onPressed: onpressed,
        child: Container(
          height: 40,
          alignment: Alignment.center,
          width: double.maxFinite,
          child: const Text(
            "LOGIN",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ));
  }
}

class _UsernameTextfield extends StatelessWidget {
  final TextEditingController textController;
  const _UsernameTextfield({
    required this.textController,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Username",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: ConstColors.textgray),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(26, 0, 0, 0)),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: textController,
              style: const TextStyle(fontSize: 14),
              cursorColor: const Color.fromARGB(91, 0, 0, 0),
              decoration: const InputDecoration(
                  hintText: "Username",
                  hintStyle: TextStyle(color: ConstColors.textgray),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  fillColor: Colors.black12,
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(color: Colors.green, width: 2)),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.all(Radius.circular(5)))
                  // labelText: 'Enter something',
                  ),
            ),
          )
        ],
      ),
    );
  }
}

class _PassswordTextfield extends StatefulWidget {
  final TextEditingController textcontroller;
  const _PassswordTextfield({
    required this.textcontroller,
  });

  @override
  State<_PassswordTextfield> createState() => _PassswordTextfieldState();
}

class _PassswordTextfieldState extends State<_PassswordTextfield> {
  var passwordvisible = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Password",
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: ConstColors.textgray),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromARGB(26, 0, 0, 0)),
              color: Colors.white,
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: widget.textcontroller,
              obscureText: passwordvisible,
              obscuringCharacter: "*",
              style: const TextStyle(
                fontSize: 14,
              ),
              cursorColor: const Color.fromARGB(91, 0, 0, 0),
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      passwordvisible = !passwordvisible;
                    });
                  },
                  icon: Icon(
                    passwordvisible ? Icons.visibility : Icons.visibility_off,
                    size: 18,
                  ),
                  alignment: Alignment.center,
                  padding: EdgeInsets.zero,
                ),
                hintText: "Password",
                hintStyle: const TextStyle(
                  color: ConstColors.textgray,
                  fontWeight: FontWeight.normal,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 12,
                ),
                fillColor: Colors.black12,
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
