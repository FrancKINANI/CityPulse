import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../services/auth_service.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _bioController = TextEditingController();
  final _interestsController = TextEditingController();
  bool _isEditing = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _bioController.dispose();
    _interestsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    final user = authService.currentUser;

    if (user != null) {
      _nameController.text = user.name ?? '';
      _emailController.text = user.email ?? '';
      _bioController.text = user.bio ?? 'Tell us about yourself...';
      _interestsController.text = user.interests ?? 'e.g., Hiking, Photography';
    }

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        title: Text(
          'Edit Profile',
          style: Theme.of(context).appBarTheme.titleTextStyle,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        actions: [
          IconButton(
            icon: Icon(
              _isEditing ? Icons.check : Icons.edit,
              color: Theme.of(context).appBarTheme.iconTheme?.color,
            ),
            onPressed: () {
              setState(() {
                _isEditing = !_isEditing;
              });
              if (!_isEditing) {
                // If switching from edit to view, save changes (or revert if cancelled)
                _saveProfileChanges();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Profile picture
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Icon(
                    Icons.person,
                    size: 80,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              ),
              const SizedBox(height: 20),

              // Name field (view or edit mode)
              _isEditing
                  ? TextFormField(
                      controller: _nameController,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Name',
                        labelStyle: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your name';
                        }
                        return null;
                      },
                    )
                  : Text(
                      user?.name ?? 'N/A',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
              const SizedBox(height: 16),

              // Email field (view or edit mode)
              _isEditing
                  ? TextFormField(
                      controller: _emailController,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        if (!value.contains('@')) {
                          return 'Please enter a valid email';
                        }
                        return null;
                      },
                    )
                  : Text(
                      user?.email ?? 'N/A',
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
              const SizedBox(height: 16),

              // Bio field (view or edit mode)
              Text('Bio', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              _isEditing
                  ? TextFormField(
                      controller: _bioController,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Tell us about yourself...',
                        labelStyle: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      maxLines: 3,
                    )
                  : Text(
                      user?.bio ?? 'No bio available.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
              const SizedBox(height: 16),

              // Interests field (view or edit mode)
              Text('Interests', style: Theme.of(context).textTheme.titleMedium),
              const SizedBox(height: 8),
              _isEditing
                  ? TextFormField(
                      controller: _interestsController,
                      style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge?.color,
                      ),
                      decoration: InputDecoration(
                        hintText: 'e.g., Hiking, Photography',
                        labelStyle: TextStyle(
                          color: Theme.of(context).textTheme.bodyMedium?.color,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).dividerColor!,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      maxLines: 3,
                    )
                  : Text(
                      user?.interests ?? 'No interests specified.',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
              const SizedBox(height: 16),

              // Save button (only in edit mode)
              if (_isEditing)
                ElevatedButton(
                  style: Theme.of(context).elevatedButtonTheme.style,
                  onPressed: () {
                    _saveProfileChanges();
                  },
                  child: const Text('Save Changes'),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveProfileChanges() async {
    if (_formKey.currentState!.validate()) {
      final authService = Provider.of<AuthService>(context, listen: false);
      await authService.updateProfile({
        'name': _nameController.text,
        'email': _emailController.text,
        'bio': _bioController.text,
        'interests': _interestsController.text, // Save interests
      });
      // No need to navigate pop here, just switch back to view mode
      setState(() {
        _isEditing = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Profile updated successfully!')),
      );
    }
  }
}
