import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final List<String> dietPreferences = [
    'Vegan',
    'Ketogenic',
    'Low-Fat',
    'Vegeatarian',
    'Carnivore'
  ];
  final List<String> allergies = [
    'Soy',
    'ShellFish',
    'Milk',
    'Peanuts',
    'Eggs'
  ];
  final List<String> cuisines = [
    'Asian',
    'Italian',
    'American',
    'Chinese',
    'Mexican',
    'Thai',
    'Mediterranian'
  ];

  List<String> selectedDietPreferences = [];
  List<String> selectedAllergies = [];
  List<String> selectedCuisines = [];

  bool isSelected = false;

  final _emailController = TextEditingController();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Greeting Text
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Get Started!',
                    style: GoogleFonts.oldStandardTt(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 48,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter your details',
                  style: GoogleFonts.alice(fontSize: 24),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      label: Text('Username'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 4, 114, 11),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: TextField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      label: Text('Email'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 4, 114, 11),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10),
                  child: TextField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      label: Text('Phone'),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(255, 4, 114, 11),
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter Dietary Preferences',
                  style: GoogleFonts.alice(fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: dietPreferences
                      .map(
                        (dietaryPreference) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: FilterChip(
                              selectedColor:
                                  const Color.fromARGB(255, 44, 160, 8),
                              backgroundColor: Colors.white,
                              label: Text(dietaryPreference),
                              selected: selectedDietPreferences
                                  .contains(dietaryPreference),
                              onSelected: (selected) {
                                setState(() {
                                  if (selected) {
                                    selectedDietPreferences
                                        .add(dietaryPreference);
                                  } else {
                                    selectedDietPreferences
                                        .remove(dietaryPreference);
                                  }
                                });
                              }),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter Allergies',
                  style: GoogleFonts.alice(fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: allergies
                      .map(
                        (allergy) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: FilterChip(
                              selectedColor:
                                  const Color.fromARGB(255, 44, 160, 8),
                              backgroundColor: Colors.white,
                              label: Text(allergy),
                              selected: selectedAllergies.contains(allergy),
                              onSelected: (selected) {
                                setState(() {
                                  if (selected) {
                                    selectedAllergies.add(allergy);
                                  } else {
                                    selectedAllergies.remove(allergy);
                                  }
                                });
                              }),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  'Enter Cuisines',
                  style: GoogleFonts.alice(fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: cuisines
                      .map(
                        (cuisine) => Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: FilterChip(
                              selectedColor:
                                  const Color.fromARGB(255, 44, 160, 8),
                              backgroundColor: Colors.white,
                              label: Text(cuisine),
                              selected: selectedCuisines
                                  .contains(cuisine),
                              onSelected: (selected) {
                                setState(() {
                                  if (selected) {
                                    selectedCuisines
                                        .add(cuisine);
                                  } else {
                                    selectedCuisines
                                        .remove(cuisine);
                                  }
                                });
                              }),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                  indent: 30,
                  endIndent: 30,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 50),
                    ),
                    backgroundColor:
                        WidgetStatePropertyAll(Color.fromARGB(255, 44, 160, 8)),
                    foregroundColor: WidgetStatePropertyAll(Colors.white),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
