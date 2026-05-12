# Flutter Form Builder

A lightweight and customizable Flutter package for building forms faster with reusable form fields, validation, and modern UI components.

Build production-ready forms with minimal boilerplate.

---

# ✨ Features

- 📝 Text Field
- 📧 Email Field
- 🔒 Password Field
- 📞 Phone Field
- 📅 Date Picker
- 📋 Dropdown Field
- ☑️ Checkbox
- 🔘 Radio Group
- 🎚 Switch Field
- 📄 Multiline Field
- ✅ Built-in Validators
- 🔢 Phone number formatter
- 👀 Password visibility toggle
- ⚡ Lightweight & reusable
- 📱 Responsive form components

---

### Demo


https://github.com/user-attachments/assets/ee700eca-ac54-468b-9ce0-651b88d935d1


# 📦 Installation

Add dependency in your `pubspec.yaml`:

```yaml
dependencies:
  flutter_form_builder: 
     path: ../
```

Then run:

```bash
flutter pub get
```

---

# 🚀 Import

```dart
import 'package:flutter_form_builder/flutter_form_builder.dart';
```

---

# 🛠 Full Example

```dart
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

  final formKey = GlobalKey<FormState>();

  final nameController =
      TextEditingController();

  final emailController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  final phoneController =
      TextEditingController();

  final bioController =
      TextEditingController();

  final dateController =
      TextEditingController();

  bool rememberMe = false;

  bool notifications = true;

  String gender = 'Male';

  String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter Form Builder',
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: SingleChildScrollView(
          child: FormBuilder(
            formKey: formKey,

            child: Column(
              children: [

                FormTextField(
                  controller: nameController,
                  hintText: 'Enter Name',

                  validator: (value) {
                    return FormValidators.required(
                      value,
                    );
                  },
                ),

                const SizedBox(height: 20),

                FormEmailField(
                  controller: emailController,
                ),

                const SizedBox(height: 20),

                FormPasswordField(
                  controller:
                      passwordController,
                ),

                const SizedBox(height: 20),

                FormPhoneField(
                  controller: phoneController,
                ),

                const SizedBox(height: 20),

                FormDatePicker(
                  controller: dateController,
                ),

                const SizedBox(height: 20),

                FormDropdownField<String>(
                  value: selectedCountry,

                  hintText:
                      'Select Country',

                  items: const [

                    DropdownMenuItem(
                      value: 'India',
                      child: Text('India'),
                    ),

                    DropdownMenuItem(
                      value: 'USA',
                      child: Text('USA'),
                    ),
                  ],

                  onChanged: (value) {
                    setState(() {
                      selectedCountry =
                          value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                FormMultilineField(
                  controller: bioController,
                  hintText: 'Enter Bio',
                ),

                const SizedBox(height: 20),

                FormCheckbox(
                  value: rememberMe,

                  title: 'Remember Me',

                  onChanged: (value) {
                    setState(() {
                      rememberMe =
                          value ?? false;
                    });
                  },
                ),

                FormSwitch(
                  value: notifications,

                  title:
                      'Enable Notifications',

                  onChanged: (value) {
                    setState(() {
                      notifications =
                          value;
                    });
                  },
                ),

                const SizedBox(height: 20),

                FormRadioGroup<String>(
                  items: const [
                    'Male',
                    'Female',
                  ],

                  groupValue: gender,

                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),

                const SizedBox(height: 30),

                SizedBox(
                  width: double.infinity,

                  child: ElevatedButton(
                    onPressed: () {

                      if (formKey
                          .currentState!
                          .validate()) {

                        debugPrint(
                          'Form Submitted',
                        );
                      }
                    },

                    child: const Text(
                      'Submit',
                    ),
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
```

---

# ⚙️ Available Widgets

| Widget | Description |
|---|---|
| `FormBuilder` | Main form wrapper |
| `FormTextField` | Standard text field |
| `FormEmailField` | Email field with validation |
| `FormPasswordField` | Password field with visibility toggle |
| `FormPhoneField` | Phone field with 10-digit limit |
| `FormDatePicker` | Date picker field |
| `FormDropdownField` | Dropdown selection |
| `FormCheckbox` | Checkbox field |
| `FormSwitch` | Switch field |
| `FormRadioGroup` | Radio button group |
| `FormMultilineField` | Multiline text field |

---

# ✅ Built-in Validators

| Validator | Description |
|---|---|
| `required()` | Required field validation |
| `email()` | Email validation |
| `phone()` | Phone validation |
| `minLength()` | Minimum length validation |
| `maxLength()` | Maximum length validation |

---

# 📞 Built-in Phone Features

`FormPhoneField` automatically:

- Allows only numeric input
- Limits input to 10 digits
- Validates phone numbers

No manual formatter setup required.

---

# 🔒 Password Features

`FormPasswordField` includes:

- Show / hide password toggle
- Secure text input
- Reusable password UI

---

# 🧠 How It Works

The package provides reusable form widgets built on top of:

- `Form`
- `TextFormField`
- Validators
- Controllers
- Input formatters

Helping developers build forms faster with less boilerplate code.

# 📄 License

MIT License

Copyright (c) 2026 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
