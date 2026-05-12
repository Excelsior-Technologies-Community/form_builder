import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget {
  const DemoPage({super.key});

  @override
  State<DemoPage> createState() => _DemoPageState();
}

class _DemoPageState extends State<DemoPage> {
  /// FORM KEY
  final formKey = GlobalKey<FormState>();

  /// CONTROLLERS
  final nameController = TextEditingController();

  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final phoneController = TextEditingController();

  final bioController = TextEditingController();

  final dateController = TextEditingController();

  /// STATES
  bool rememberMe = false;

  bool notifications = true;

  String gender = 'Male';

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Form Builder')),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: FormBuilder(
            formKey: formKey,

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                /// NAME FIELD
                FormTextField(
                  controller: nameController,
                  hintText: 'Enter Name',

                  validator: (value) {
                    return FormValidators.required(value);
                  },
                ),

                const SizedBox(height: 20),

                /// EMAIL FIELD
                FormEmailField(controller: emailController),

                const SizedBox(height: 20),

                /// PASSWORD FIELD
                FormPasswordField(controller: passwordController),

                const SizedBox(height: 20),

                /// PHONE FIELD
                FormPhoneField(
                  controller: phoneController,
                  hintText: 'Enter Phone Number',
                ),

                const SizedBox(height: 20),

                /// DATE PICKER
                FormDatePicker(controller: dateController),

                const SizedBox(height: 20),

                /// DROPDOWN
                FormDropdownField<String>(
                  value: selectedCountry,

                  hintText: 'Select Country',

                  items: const [
                    DropdownMenuItem(value: 'India', child: Text('India')),

                    DropdownMenuItem(value: 'USA', child: Text('USA')),

                    DropdownMenuItem(value: 'Canada', child: Text('Canada')),
                  ],

                  onChanged: (value) {
                    setState(() {
                      selectedCountry = value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                /// MULTILINE FIELD
                FormMultilineField(
                  controller: bioController,
                  hintText: 'Enter Bio',
                ),

                const SizedBox(height: 20),

                /// CHECKBOX
                FormCheckbox(
                  value: rememberMe,

                  title: 'Remember Me',

                  onChanged: (value) {
                    setState(() {
                      rememberMe = value ?? false;
                    });
                  },
                ),

                /// SWITCH
                FormSwitch(
                  value: notifications,

                  title: 'Enable Notifications',

                  onChanged: (value) {
                    setState(() {
                      notifications = value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                /// RADIO GROUP
                FormRadioGroup<String>(
                  items: const ['Male', 'Female'],

                  groupValue: gender,

                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),

                const SizedBox(height: 30),

                /// SUBMIT BUTTON
                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        debugPrint('''
Name: ${nameController.text}

Email: ${emailController.text}

Password: ${passwordController.text}

Phone: ${phoneController.text}

Bio: ${bioController.text}

Date: ${dateController.text}

Country: $selectedCountry

Gender: $gender

Remember Me: $rememberMe

Notifications: $notifications
''');

                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Form Submitted Successfully'),
                          ),
                        );
                      }
                    },

                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
