# TrueMe

TrueMe is a modern Flutter mobile application that provides AI coaching and personal development tools. The app is built with a clean architecture approach, using industry-standard patterns and best practices.

![TrueMe Logo](assets/logo/logo.png)

## Table of Contents

- [Overview](#overview)
- [Architecture](#architecture)
- [Key Features](#key-features)
- [Setup and Installation](#setup-and-installation)
- [Development](#development)
- [Folder Structure](#folder-structure)
- [Network Layer](#network-layer)
- [State Management](#state-management)
- [Testing](#testing)
- [Flavors](#flavors)

## Overview

TrueMe is an AI coaching platform delivered through a mobile app, providing personalized guidance, exercises, and impact metrics to help users achieve personal growth and development.

## Architecture

The application follows a Feature-first Clean Architecture approach:

- **Feature-first Directory Structure**: Organized around business features rather than technical layers
- **BLoC Pattern**: For state management using the official flutter_bloc package
- **Dependency Injection**: Using GetIt and injectable for service locator pattern
- **Repository Pattern**: For data access and manipulation
- **Service Layer**: For external interactions (APIs, device features)
- **Clean API**: Separating UI, Domain, and Data layers

## Key Features

- **AI Coaching**: Personalized AI guidance through interactive chat
- **Exercises**: Guided personal development exercises
- **Impact Metrics**: Measuring progress and impact
- **Authentication**: Secure Firebase Authentication
- **User Profiles**: Personalized user experience
- **Feedback**: Interactive feedback mechanisms

## Setup and Installation

### Prerequisites
- Flutter SDK 3.5.3 or higher
- Dart SDK 3.5.3 or higher
- Android Studio or VS Code with Flutter extensions

### Getting Started
1. Clone the repository
```bash
git clone [repository-url]
cd trueme
```

2. Install dependencies and generate required files
```bash
flutter pub get
melos run postclean
```

3. Run the application
```bash
# For development environment
flutter run --flavor dev -t lib/main_dev.dart

# For production environment
flutter run --flavor prod -t lib/main_prod.dart
```

## Development

### Useful Scripts
1. **Postclean** - Run after `flutter clean` or to update dependencies:
```bash
melos run postclean
```

2. **Dart analyze**:
```bash
melos run analyze
```

3. **Run dart format**:
```bash
melos run format
```

4. **Run build_runner**:
```bash
melos run gen:br
```

5. **Run tests**:
```bash
melos run test
```

6. **Generate code coverage report**:
```bash
melos run test_coverage
```

7. **Generate translations**:
```bash
melos run translation
```

8. **New branch setup** - Clean, get packages, and run build_runner:
```bash
melos run newbranch
```

## Folder Structure

```
lib/
 ├── app/                  # App-level components
 ├── core/                 # Core utilities and shared components
 │   ├── constants/        # App constants
 │   ├── design/           # UI design system
 │   ├── l10n/             # Localization
 │   ├── logger/           # Logging utilities
 │   ├── navigation/       # Routing system using auto_route
 │   ├── network/          # Network layer with Dio
 │   ├── presentation/     # Shared UI components
 │   ├── service_locator/  # Dependency injection
 │   └── services/         # Common services
 ├── features/             # Feature modules
 │   ├── auth/             # Authentication
 │   ├── authorization/    # Authorization
 │   ├── chatbot/          # AI chat interface
 │   ├── exercise/         # Exercise modules
 │   ├── feedback/         # User feedback
 │   ├── impact_metric/    # Progress metrics
 │   ├── login/            # Login screens
 │   ├── settings/         # App settings
 │   ├── splash_screen/    # App launch screens
 │   ├── tester/           # Testing utilities
 │   └── user/             # User profiles
 ├── flavors.dart          # App flavor configuration
 ├── main_dev.dart         # Development entry point
 └── main_prod.dart        # Production entry point
```

## Network Layer

The network layer is implemented using Dio with a strategic interceptor approach:

### Interceptors

1. **NetworkInterceptor**
   - Responsible for logging and tracing network communication
   - Provides debugging information about requests and responses
   - Acts as a passive monitoring layer

2. **AuthInterceptor**
   - Manages authentication tokens for API requests
   - Gets fresh tokens from Firebase Authentication
   - Adds Authorization headers to outgoing requests

3. **ErrorInterceptor**
   - Handles error responses and takes actions based on error types
   - Manages authentication errors (401) by triggering logout
   - Categorizes errors consistently and ensures proper error handling

## State Management

The application uses the BLoC (Business Logic Component) pattern for state management:

- **Bloc**: For complex flows with multiple states and events
- **Cubit**: For simpler state management needs
- **Freezed**: For immutable state and event classes
- **Repository**: For data operations

## Testing

The application includes:
- Unit tests
- Widget tests
- BLoC tests using bloc_test

Run tests with:
```bash
melos run test
```

## Flavors

TrueMe supports multiple build flavors:

- **Development** (`DEVELOP`): For development and testing
- **Production** (`PROD`): For production releases

Each flavor has its own:
- App name
- Backend URL
- API keys
- Firebase configuration

To run a specific flavor:
```bash
flutter run --flavor dev -t lib/main_dev.dart
flutter run --flavor prod -t lib/main_prod.dart
```

## License

Copyright © 2024 TrueMe. All rights reserved.

