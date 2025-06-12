import 'package:flutter/material.dart';
import '../widgets/create_tour_header.dart';
import '../widgets/tour_progress_bar.dart';
import '../widgets/tour_description.dart';
import '../widgets/tour_location.dart';
import '../widgets/tour_schedule.dart';
import '../widgets/tour_price.dart';
import '../widgets/tour_capacity.dart';
import '../widgets/tour_image_upload.dart';
import '../widgets/tour_submit_button.dart';
import '../services/tour_service.dart';
import '../models/tour.dart';
import 'package:citypulse/config/routes.dart';
import 'add_to_tour_screen.dart';

class CreateTourScreen extends StatefulWidget {
  const CreateTourScreen({super.key});

  @override
  State<CreateTourScreen> createState() => _CreateTourScreenState();
}

class _CreateTourScreenState extends State<CreateTourScreen> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _priceController = TextEditingController();
  final _capacityController = TextEditingController();
  final _tourService = TourService();

  List<Map<String, String>> _selectedLocations = [];
  List<String> _imageUrls = [];
  DateTime? _startDate;
  DateTime? _endDate;
  bool _isLoading = false;
  int _currentStep = 1;
  final int _totalSteps = 5;

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _capacityController.dispose();
    super.dispose();
  }

  Future<void> _handleSubmit() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final tour = Tour(
        id: '', // Will be set by Firestore
        title: _titleController.text,
        description: _descriptionController.text,
        locations: _selectedLocations.map((e) => e['name']!).toList(),
        startDate: _startDate!,
        endDate: _endDate!,
        price: double.parse(_priceController.text),
        capacity: int.parse(_capacityController.text),
        imageUrls: _imageUrls,
        guideId: 'current_user_id', // TODO: Get from auth service
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );

      await _tourService.createTour(tour);
      if (mounted) {
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error creating tour: $e')));
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _navigateToAddLocations() async {
    final selectedPlacesFromAddTour = await Navigator.pushNamed(
      context,
      Routes.addToTour,
    );
    if (selectedPlacesFromAddTour != null &&
        selectedPlacesFromAddTour is List<Map<String, String>>) {
      setState(() {
        _selectedLocations.addAll(selectedPlacesFromAddTour);
      });

      if (mounted) {
        // Now navigate to the edit schedule screen with the combined list
        final updatedLocationsWithSchedule = await Navigator.pushNamed(
          context,
          Routes.editTourSchedule,
          arguments: _selectedLocations, // Pass the combined list for editing
        );

        if (updatedLocationsWithSchedule != null &&
            updatedLocationsWithSchedule is List<Map<String, String>>) {
          setState(() {
            _selectedLocations =
                updatedLocationsWithSchedule; // Update with reordered and timed locations
          });
          // After editing schedule, automatically submit the tour
          await _handleSubmit(); // Trigger the tour submission
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Tour')),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            const CreateTourHeader(),
            TourProgressBar(currentStep: _currentStep, totalSteps: _totalSteps),
            TourDescription(controller: _descriptionController),
            TourLocation(
              selectedLocations: _selectedLocations,
              onLocationRemoved: (location) {
                setState(() => _selectedLocations.remove(location));
              },
              onAddLocationButtonPressed: _navigateToAddLocations,
            ),
            TourSchedule(
              startDate: _startDate,
              endDate: _endDate,
              onStartDateChanged: (date) {
                setState(() => _startDate = date);
              },
              onEndDateChanged: (date) {
                setState(() => _endDate = date);
              },
            ),
            TourPrice(controller: _priceController),
            TourCapacity(controller: _capacityController),
            TourImageUpload(
              imageUrls: _imageUrls,
              onAddImage: () {
                // TODO: Implement image upload
              },
              onRemoveImage: (index) {
                setState(() => _imageUrls.removeAt(index));
              },
            ),
            TourSubmitButton(isLoading: _isLoading, onPressed: _handleSubmit),
          ],
        ),
      ),
    );
  }
}
