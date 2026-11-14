
import 'dart:io';

// ==========================================
// A. Abstract Class: Person
// ==========================================

abstract class Person {
  final String name;
  final int age;

  const Person({
    required this.name,
    required this.age,
  });

  void displayInfo();
}

// ==========================================
// B. Doctor Class
// ==========================================

class Doctor extends Person {
  final String specialization;

  const Doctor({
    required String name,
    required int age,
    required this.specialization,
  }) : super(name: name, age: age);

  @override
  void displayInfo() {
    print('Doctor Name: $name');
    print('Age: $age');
    print('Specialization: $specialization');
    print('----------------------------');
  }
}

// ==========================================
// C. Patient Class
// ==========================================

class Patient extends Person {
  String _patientId;
  Doctor? _doctor;

  Patient({
    required String name,
    required int age,
    required String patientId,
  })  : _patientId = patientId,
        _doctor = null,
        super(name: name, age: age);

  // Named Constructor
  Patient.guest()
      : _patientId = 'GUEST',
        _doctor = null,
        super(name: 'Guest Patient', age: 0);

  // Getter
  String get patientId => _patientId;

  // Setter
  set patientId(String id) {
    if (id.trim().isNotEmpty) {
      _patientId = id;
    } else {
      print('Error: Patient ID cannot be empty!');
    }
  }

  // Book Appointment
  void bookAppointment(Doctor doctor) {
    _doctor = doctor;
    print('Appointment booked successfully!');
  }

  @override
  void displayInfo() {
    print('Patient Name: $name');
    print('Age: $age');
    print('Patient ID: $patientId');

    if (_doctor != null) {
      print('Assigned Doctor: ${_doctor!.name}');
    } else {
      print('Assigned Doctor: Not assigned yet');
    }

    print('----------------------------');
  }
}

// ==========================================
// D. Hospital Class
// ==========================================

class Hospital {
  List<Doctor> doctors = [];
  List<Patient> patients = [];

  // Add Doctor
  void addDoctor(Doctor doctor) {
    doctors.add(doctor);
    print('Doctor added successfully!');
  }

  // Add Patient
  void addPatient(Patient patient) {
    bool exists = patients.any(
      (p) => p.patientId == patient.patientId,
    );
    if (exists) {
      print('Error: Patient ID already exists!');
      return;
    }
    patients.add(patient);
    print('Patient added successfully!');
  }

  // Display Doctors
  void displayDoctors() {
    if (doctors.isEmpty) {
      print('No doctors are available.');
      return;
    }
    print('\n===== Doctors List =====');
    for (Doctor doctor in doctors) {
      doctor.displayInfo();
    }
  }

  // Display Patients
  void displayPatients() {
    if (patients.isEmpty) {
      print('No patients are available.');
      return;
    }

    print('\n===== Patients List =====');

    for (Patient patient in patients) {
      patient.displayInfo();
    }
  }

  // Book Appointment
  void bookAppointment(String patientId, String doctorName) {
    Patient? selectedPatient;
    Doctor? selectedDoctor;

    for (Patient patient in patients) {
      if (patient.patientId == patientId) {
        selectedPatient = patient;
        break;
      }
    }

    for (Doctor doctor in doctors) {
      if (doctor.name.toLowerCase() ==
          doctorName.toLowerCase()) {
        selectedDoctor = doctor;
        break;
      }
    }

    if (selectedPatient == null) {
      print('Error: Patient ID not found!');
      return;
    }

    if (selectedDoctor == null) {
      print('Error: Doctor name not found!');
      return;
    }

    selectedPatient.bookAppointment(selectedDoctor);
  }
}

// ==========================================
// Main Function
// ==========================================

void main() {
  Hospital hospital = Hospital();

  bool isRunning = true;

  while (isRunning) {
    print('\n===== Hospital Management System =====');
    print('1. Add Doctor');
    print('2. Add Patient');
    print('3. Display Doctors');
    print('4. Display Patients');
    print('5. Book Appointment');
    print('6. Exit');

    stdout.write('\nChoose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {

      // Add Doctor
      case '1':
        stdout.write('Enter Doctor Name: ');
        String name = stdin.readLineSync() ?? '';

        stdout.write('Enter Doctor Age: ');
        int age = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

        stdout.write('Enter Specialization: ');
        String specialization = stdin.readLineSync() ?? '';

        if (name.trim().isEmpty ||age < 0 ||specialization.trim().isEmpty) {
          print('Invalid doctor information!');
          break;
        }

        Doctor doctor = Doctor(
          name: name,
          age: age,
          specialization: specialization,
        );

        hospital.addDoctor(doctor);
        break;

      // Add Patient
      case '2':
        stdout.write('Enter Patient Name: ');
        String name = stdin.readLineSync() ?? '';

        stdout.write('Enter Patient Age: ');
        int age = int.tryParse(stdin.readLineSync() ?? '') ?? -1;

        stdout.write('Enter Patient ID: ');
        String patientId = stdin.readLineSync() ?? '';

        if (name.trim().isEmpty ||age < 0 ||patientId.trim().isEmpty) {
          print('Invalid patient information!');
          break;
        }

        Patient patient = Patient(
          name: name,
          age: age,
          patientId: patientId,
        );

        hospital.addPatient(patient);
        break;

      // Display Doctors
      case '3':
        hospital.displayDoctors();
        break;

      // Display Patients
      case '4':
        hospital.displayPatients();
        break;

      // Book Appointment
      case '5':
        if (hospital.doctors.isEmpty) {
          print('No doctors available. Add a doctor first!');
          break;
        }

        if (hospital.patients.isEmpty) {
          print('No patients available. Add a patient first!');
          break;
        }

        stdout.write('Enter Patient ID: ');
        String id = stdin.readLineSync() ?? '';

        stdout.write('Enter Doctor Name: ');
        String doctorName = stdin.readLineSync() ?? '';

        hospital.bookAppointment(id, doctorName);
        break;

      // Exit
      case '6':
        isRunning = false;
        print('Thank you for using Hospital Management System!');
        break;

      default:
        print('Invalid choice! Please choose from 1 to 6.');
    }
  }
}
