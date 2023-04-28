import 'package:flutter/material.dart';
import 'package:simply_poem/widgets/authTextField.dart';
import 'package:simply_poem/widgets/buttonWidget.dart';
import 'package:simply_poem/widgets/textWidget.dart';
import 'package:sizer/sizer.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController _namecontroller = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();
  TextEditingController _messagecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 4.0.h, horizontal: 2.0.h),
            child: Column(
              children: [
                Center(
                  child: Image(
                    width: MediaQuery.of(context).size.width * 0.4,
                    height: MediaQuery.of(context).size.height * 0.25,
                    image: AssetImage("assets/logo.png"),
                  ),
                ),
                TextWidget(
                  text: "Contact Us",
                  size: 30.0.sp,
                ),
                SizedBox(
                  height: 5.h,
                ),
                AuthTextField(
                  controller: _namecontroller,
                  obsecureText: false,
                  text: "Name",
                  icon: "assets/mail.png",
                ),
                SizedBox(
                  height: 2.h,
                ),
                AuthTextField(
                  controller: _emailcontroller,
                  obsecureText: false,
                  text: "Email",
                  icon: "assets/mail.png",
                ),
                SizedBox(
                  height: 2.h,
                ),
                AuthTextField(
                  controller: _passwordcontroller,
                  obsecureText: true,
                  text: "Subject",
                  icon: "assets/lock.png",
                ),
                SizedBox(
                  height: 2.h,
                ),
                AuthTextField(
                  controller: _messagecontroller,
                  obsecureText: true,
                  text: "Message",
                  icon: "assets/lock.png",
                ),
                SizedBox(
                  height: 6.0.h,
                ),
                InkWell(
                  onTap: () {},
                  child: ButtonWidget(text: "Submit"),
                ),
                SizedBox(
                  height: 2.0.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
