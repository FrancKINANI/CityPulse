import 'package:flutter/material.dart';
import 'package:citypulse/lib/config/app_config.dart';
import 'package:citypulse/lib/features/add_place/widgets/add_place_header.dart';
import 'package:citypulse/lib/features/add_place/widgets/add_place_form_section.dart';
import 'package:citypulse/lib/features/add_place/widgets/add_place_business_hours_section.dart';
import 'package:citypulse/lib/features/add_place/widgets/add_place_media_section.dart';
import 'package:citypulse/lib/features/add_place/widgets/add_place_preview_section.dart';
import 'package:citypulse/lib/features/add_place/widgets/add_place_actions_section.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class AddPlace extends StatefulWidget {
  const AddPlace({super.key});
  @override
  AddPlaceState createState() => AddPlaceState();
}

class AddPlaceState extends State<AddPlace> {
  String textField1 = '';
  String textField2 = '';
  String textField3 = '';
  String textField4 = '';
  String textField5 = '';
  String textField6 = '';
  String textField7 = '';
  String textField8 = '';
  String textField9 = '';
  String textField10 = '';
  String textField11 = '';
  String textField12 = '';
  Map<String, Map<String, String>> businessHours = {
    'Monday': {'open': '', 'close': ''},
    'Tuesday': {'open': '', 'close': ''},
    'Wednesday': {'open': '', 'close': ''},
    'Thursday': {'open': '', 'close': ''},
    'Friday': {'open': '', 'close': ''},
    'Saturday': {'open': '', 'close': ''},
    'Sunday': {'open': '', 'close': ''},
  };
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          constraints: const BoxConstraints.expand(),
          color: Color(0xFFFFFFFF),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  color: Color(0xFFFFFFFF),
                  width: double.infinity,
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AddPlaceHeader(),
                        IntrinsicHeight(
                          child: Container(
                            color: Color(0xFF112116),
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IntrinsicHeight(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        IntrinsicHeight(
                                          child: Container(
                                            color: Color(0xFF112116),
                                            padding: const EdgeInsets.all(16),
                                            width: double.infinity,
                                            child: Row(
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(
                                                    top: 12,
                                                    bottom: 12,
                                                    right: 24,
                                                  ),
                                                  width: 24,
                                                  height: 24,
                                                  child: Image.network(
                                                    "https://figma-alpha-api.s3.us-west-2.amazonaws.com/images/9f7c3698-6f6a-4d34-9f7b-1fd0e974b355",
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                Text(
                                                  "Manage",
                                                  style: TextStyle(
                                                    color: Color(0xFFFFFFFF),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 16,
                                              right: 16,
                                            ),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AddPlaceFormSection(
                                                  label: "Name",
                                                  hint: "Enter the name",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      textField1 = value;
                                                    });
                                                  },
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    color: Color(0xFF264433),
                                                  ),
                                                  height: 32,
                                                  width: double.infinity,
                                                  child: SizedBox(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 16,
                                              right: 16,
                                            ),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AddPlaceFormSection(
                                                  label: "Description",
                                                  hint: "Enter the description",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      textField2 = value;
                                                    });
                                                  },
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    color: Color(0xFF264433),
                                                  ),
                                                  height: 144,
                                                  width: double.infinity,
                                                  child: SizedBox(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 16,
                                              right: 16,
                                            ),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AddPlaceFormSection(
                                                  label: "Address",
                                                  hint: "Enter the address",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      textField3 = value;
                                                    });
                                                  },
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    color: Color(0xFF264433),
                                                  ),
                                                  height: 32,
                                                  width: double.infinity,
                                                  child: SizedBox(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 16,
                                              right: 16,
                                            ),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AddPlaceFormSection(
                                                  label: "Phone",
                                                  hint:
                                                      "Enter the phone number",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      textField4 = value;
                                                    });
                                                  },
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    color: Color(0xFF264433),
                                                  ),
                                                  height: 32,
                                                  width: double.infinity,
                                                  child: SizedBox(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 16,
                                              right: 16,
                                            ),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AddPlaceFormSection(
                                                  label: "Email",
                                                  hint: "Enter the email",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      textField5 = value;
                                                    });
                                                  },
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    color: Color(0xFF264433),
                                                  ),
                                                  height: 32,
                                                  width: double.infinity,
                                                  child: SizedBox(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        IntrinsicHeight(
                                          child: Container(
                                            padding: const EdgeInsets.only(
                                              top: 12,
                                              bottom: 12,
                                              left: 16,
                                              right: 16,
                                            ),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                AddPlaceFormSection(
                                                  label: "Website",
                                                  hint: "Enter the website",
                                                  onChanged: (value) {
                                                    setState(() {
                                                      textField6 = value;
                                                    });
                                                  },
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                          12,
                                                        ),
                                                    color: Color(0xFF264433),
                                                  ),
                                                  height: 32,
                                                  width: double.infinity,
                                                  child: SizedBox(),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 16,
                                            bottom: 16,
                                            left: 16,
                                          ),
                                          child: Text(
                                            "Business Hours",
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        AddPlaceBusinessHoursSection(
                                          businessHours: businessHours,
                                          onChanged: (day, open, close) {
                                            setState(() {
                                              businessHours[day] = {
                                                'open': open,
                                                'close': close,
                                              };
                                            });
                                          },
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(
                                            top: 16,
                                            bottom: 16,
                                            left: 16,
                                          ),
                                          child: Text(
                                            "Media",
                                            style: TextStyle(
                                              color: Color(0xFFFFFFFF),
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        AddPlaceMediaSection(
                                          onUpload: _pickImageFromGallery,
                                          onCamera: _pickImageFromCamera,
                                          onRemove: _removeImage,
                                          imageUrl: _selectedImage?.path,
                                        ),
                                        AddPlacePreviewSection(
                                          name: textField1,
                                          description: textField2,
                                          imageUrl: _selectedImage?.path,
                                        ),
                                        AddPlaceActionsSection(
                                          onSave: _onSave,
                                          onCancel: _onCancel,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                IntrinsicHeight(
                                  child: SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            print('Pressed');
                                          },
                                          child: IntrinsicHeight(
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(24),
                                                color: Color(0xFF38E07A),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                    vertical: 12,
                                                  ),
                                              margin:
                                                  const EdgeInsets.symmetric(
                                                    horizontal: 16,
                                                    vertical: 12,
                                                  ),
                                              width: double.infinity,
                                              child: Column(
                                                children: [
                                                  Container(
                                                    margin:
                                                        const EdgeInsets.only(
                                                          bottom: 1,
                                                        ),
                                                    child: Text(
                                                      "Save",
                                                      style: TextStyle(
                                                        color: Color(
                                                          0xFF112116,
                                                        ),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          color: Color(0xFF112116),
                                          height: 20,
                                          width: double.infinity,
                                          child: SizedBox(),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _removeImage() {
    setState(() {
      _selectedImage = null;
    });
  }

  Future<void> _pickImageFromGallery() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  Future<void> _pickImageFromCamera() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  void _onSave() {
    if (textField1.isEmpty || textField2.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Veuillez remplir tous les champs obligatoires.'),
        ),
      );
      return;
    }
    // TODO: Implémenter la logique de sauvegarde
    print('Save pressed');
  }

  void _onCancel() {
    // TODO: Implémenter la logique d'annulation
    print('Cancel pressed');
  }
}
