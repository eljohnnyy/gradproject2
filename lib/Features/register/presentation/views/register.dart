import 'package:flutter/material.dart';
import 'package:gradproject/core/utls/widget/sign_button.dart';
import 'package:gradproject/core/utls/widget/sign_logo.dart';
import 'package:gradproject/core/utls/widget/text_body.dart';


class Register extends StatefulWidget {

  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool hide = true;
  bool hide1 = true;
  TextEditingController? user;
  TextEditingController? password;
  TextEditingController? password1;
  TextEditingController? email;
  TextEditingController? phone;
  TextEditingController? street;
  TextEditingController? city;
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  void initState() {
    user = TextEditingController();
    password = TextEditingController();
    password1 = TextEditingController();
    email = TextEditingController();
    phone = TextEditingController();
    street = TextEditingController();
    city = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    user!.dispose();
    password!.dispose();
    password1!.dispose();
    email!.dispose();
    phone!.dispose();
    street!.dispose();
    city!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              const SizedBox(height: 30,),

              const SignLogo(),

              const SizedBox(height: 50,),

              Form(
                key: formKey,
                child: Column(
                  children: [
                    TextBody(
                      textController: user!,
                      imageLink: "assets/images/avatar.png",
                      name: "اسم المستخدم",
                      secure: false,
                      hide: false,
                    ),

                    TextBody(
                      textController: password!,
                      imageLink: "assets/images/protection.png",
                      name: "كلمة المرور",
                      secure: true,
                      hide: hide,
                      onHide: (){
                        setState(() {
                          hide? hide = false: hide = true;
                        });
                      },
                    ),

                    TextBody(
                      textController: password1!,
                      imageLink: "assets/images/protection.png",
                      name: "تاكيد كلمة المرور",
                      secure: true,
                      hide: hide1,
                      onHide: (){
                        setState(() {
                          hide1? hide1 = false: hide1 = true;
                        });
                      },
                    ),

                    TextBody(
                      textController: email!,
                      imageLink: "assets/images/email.png",
                      name: "الحساب الالكتروني",
                      secure: false,
                      hide: false,
                      keyboardType: TextInputType.emailAddress,
                    ),

                    TextBody(
                      textController: phone!,
                      imageLink: "assets/images/support.png",
                      name: "رقم الهاتف",
                      secure: false,
                      hide: false,
                      keyboardType: TextInputType.phone,
                    ),

                    TextBody(
                      textController: street!,
                      imageLink: "assets/images/support.png",
                      name: "اسم الشارع",
                      secure: false,
                      hide: false,
                    ),

                    TextBody(
                      textController: city!,
                      imageLink: "assets/images/support.png",
                      name: "اسم المدينة",
                      secure: false,
                      hide: false,
                    ),
                  ],
                )
              ),

              const SizedBox(height: 75,),

              SignButton(name: "إنشاء حساب",onPressed: () {
                  if (formKey.currentState!.validate()) {
                           Navigator.of(context).pushReplacementNamed("login");
                          }
              },),
            ],
          ),
        )
    );
  }
}