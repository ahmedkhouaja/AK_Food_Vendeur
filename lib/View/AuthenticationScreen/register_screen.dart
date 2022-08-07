
import 'dart:io';
import 'package:ak_food_vendeur/Widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController locationController = TextEditingController();

  XFile? imageXFile;
  final ImagePicker _picker = ImagePicker();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children:  [
            const SizedBox(height: 15,),
            InkWell(
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.20,
                backgroundColor: Colors.white,
                backgroundImage: imageXFile==null ? null : FileImage(File(imageXFile!.path)),
                child: imageXFile == null
                    ?  Icon(
                          Icons.add_photo_alternate,
                          size: MediaQuery.of(context).size.width * 0.2,
                          color: Colors.grey,
                          )
                    : null ,

              ),
            ),
            const SizedBox(height: 10,),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomTextField(
                    data: Icons.person,
                    controller: nameController,
                    hintText: "Name",
                    isObsecre: false,
                  ),//Name Field
                  CustomTextField(
                    data: Icons.person,
                    controller: emailController,
                    hintText: "Email",
                    isObsecre: false,
                  ),// Email Field
                  CustomTextField(
                    data: Icons.password,
                    controller: passwordController,
                    hintText: "Password",
                    isObsecre: true,
                  ),// password Field
                  CustomTextField(
                    data: Icons.password,
                    controller: confirmPasswordController,
                    hintText: "Confirm Password",
                    isObsecre: true,
                  ),// conf password Field
                  CustomTextField(
                    data: Icons.phone,
                    controller: phoneController,
                    hintText: "Phone Number",
                    isObsecre: false,
                  ),// phone number Field
                  CustomTextField(
                    data: Icons.my_location,
                    controller: locationController,
                    hintText: "Restaurant Location ",
                    isObsecre: false,
                    enabled: false,
                  ), //location Field
                  Container(
                    width:  400,
                    height: 40,
                    alignment: Alignment.center,
                    child: ElevatedButton.icon(
                      label: const Text(
                        "Get my  Current Location",
                        style: TextStyle(color: Colors.white,
                        fontSize: 17)
                      ),
                      icon: const Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      onPressed: () => print("clicked"),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                        shape:   RoundedRectangleBorder(
                          borderRadius:   BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),// Get my location button
                ],
              ),
            ),
            const SizedBox(height: 30,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 12)
            ),
              onPressed: () => print("Clicked"),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20),
                ),
            ),
            const SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
