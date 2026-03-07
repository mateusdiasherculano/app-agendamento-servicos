# Service Scheduling App

Mobile application developed with **Flutter** for managing service scheduling between **clients** and **professionals**.

This application consumes the **Service Scheduling REST API** and allows users to browse services, view professional availability, and schedule appointments directly from a mobile device.

---

# Project Purpose

The goal of this project is to simulate a real-world **service scheduling platform**, focusing on:

* Clean and scalable **Flutter architecture**
* Good **state management practices**
* Integration with a **REST API backend**
* Maintainable and modular code structure

The application is part of a **full-stack learning project**, combining a **Spring Boot backend** with a **Flutter mobile client**.

---

# Technologies

This project uses the following technologies:

* **Flutter**
* **Dart**
* **Flutter Modular** (dependency injection and routing)
* **Flutter Triple** (state management)
* **REST API integration**
* **Material Design**

---

# Features

Current and planned features:

* User authentication
* Service listing
* Professional availability visualization
* Appointment scheduling
* Appointment history
* Profile management

---

# Project Structure

The project follows a **modular architecture** to keep responsibilities separated and scalable.

```
lib
├── main.dart
├── app_module.dart
├── app_widget.dart
│
├── core
│   ├── network/
│   ├── constants/
│   └── widgets/
│
├── modules
│   ├── sign_in/
│   ├── bookings/   
│   ├── home/   
│   │
│
│
```

---

# Architecture

This project follows a **modular architecture using Flutter Modular**, separating the application into independent feature modules.

Responsibilities are divided into:

* **Pages** → UI layer
* **Stores** → State management
* **Repositories** → Data access
* **Core** → Shared infrastructure and utilities

This approach improves **maintainability, scalability, and testability**.

---

# Getting Started

## Prerequisites

Make sure you have installed:

* **Flutter SDK**
* **Dart**
* **Android Studio** or **VS Code**
* **Android Emulator** or **physical device**

Check your Flutter installation:

```
flutter doctor
```

---

# Install Dependencies

```
flutter pub get
```

---

# Run the Application

```
flutter run
```

---

# Backend API

This mobile application consumes the **Service Scheduling API**.

Backend repository:

```
https://github.com/mateusdiasherculano/service-scheduling-api
```

Make sure the backend is running before starting the mobile application.

---

# Future Improvements

Planned improvements for the project:

* Authentication with JWT
* API error handling
* Offline support
* Automated tests
* CI/CD pipeline
* Deployment to app stores

---

# Author

Developed by **Mateus Dias** as part of a full-stack learning project focused on:

* Flutter mobile development
* Clean architecture
* REST API integration
* Scalable mobile applications
