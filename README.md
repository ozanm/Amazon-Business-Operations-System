# Amazon-Business-Operations-System
For our Introduction to Cloud Computing class, this is a cross-platform application with the screens and functionality to support Amazon's daily business operations. It includes Billing and Payments, Customer Service, Shipments, Warehouse Management, Video Streaming Service, Audio Streaming, and more. It is powered on the Flutter framework.

# amazon_business_operations_system

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Learn Flutter](https://docs.flutter.dev/get-started/learn-flutter)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter learning resources](https://docs.flutter.dev/reference/learning-resources)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

# Amazon Business Operations System

A collaborative Flutter application developed for the **Introduction to Cloud Computing** course.

## Proposed Project Architecture

This application can follow a **feature-first architecture**, organizing code by functionality to allow contributors to develop their respective modules independently. Please see the explanation, description, and instructions on this architecture and how to develop with it below.

### Directory Structure

```text
lib/
├── main.dart
├── app/
│   ├── app.dart
│   └── app_theme.dart
├── core/
│   ├── constants/
│   └── models/
├── features/
│   ├── dashboard/
│   ├── billing/
│   ├── customer_service/
│   ├── shipments/
│   ├── warehouse/
│   ├── video_streaming/
│   ├── audio_streaming/
│   ├── customer_support/
│   ├── comments/
│   └── corporate_relationships/
└── shared/
```

### Directory Responsibilities

| Directory | Purpose |
|---|---|
| `app/` | Application configuration and theme |
| `core/` | Shared models, constants, and foundational logic |
| `features/` | Individual modules developed by contributors |
| `shared/` | Reusable components used across modules |
| `test/` | Automated application tests |

### Module Organization

Each contributor should develop their assigned functionality within the appropriate directory under `lib/features/`.

For example:

```text
features/
└── warehouse/
    ├── screens/
    │   ├── warehouse_dashboard.dart
    │   ├── inventory_screen.dart
    │   └── inventory_transfers_screen.dart
    ├── models/
    ├── services/
    └── widgets/
```

Contributors should create subdirectories as needed and avoid modifying shared application files unless necessary.

---

## 2. GitHub Collaboration

The repository would follow a **feature-branch workflow** if this is agreed upon by the class.

The `main` branch contains the shared application. Contributors should develop their work on separate branches and submit Pull Requests to integrate their changes.

### Step 1: Clone the Repository

```bash
git clone https://github.com/ozanm/Amazon-Business-Operations-System.git
cd Amazon-Business-Operations-System
flutter pub get
```

### Step 2: Create a Feature Branch

Ensure your local `main` branch is up to date:

```bash
git checkout main
git pull origin main
```

Create a branch for your assigned work:

```bash
git checkout -b feature/warehouse-management
```

Use descriptive branch names, such as `feature/billing-payments` or `feature/shipments`.

### Step 3: Develop and Commit

Make changes within your assigned feature directory.

Commit your work with a descriptive message:

```bash
git add .
git commit -m "Implement warehouse management screens"
```

### Step 4: Push Your Branch

```bash
git push -u origin feature/warehouse-management
```

Subsequent changes can be pushed using:

```bash
git push
```

### Step 5: Create a Pull Request

On GitHub:

1. Open the repository's **Pull requests** tab.
2. Select **New pull request**.
3. Set the base branch to `main` and compare it against your feature branch.
4. Describe your changes and submit the Pull Request.
5. Wait for review and approval before merging.

Pull Requests should briefly summarize the functionality implemented and identify any incomplete work.

### Step 6: Keep Your Branch Updated

To incorporate changes from `main` into your feature branch, first commit or stash your current work, then run:

```bash
git fetch origin
git merge origin/main
```

Resolve any merge conflicts before continuing development.

---

## 3. Development Guidelines

All contributors should follow these conventions if agreed upon by the class:

- **Code organization:** Keep code within the appropriate feature directory.
- **Naming:** Use `snake_case` for filenames and `PascalCase` for class names.
- **Consistency:** Follow the existing application theme and UI conventions.
- **Modularity:** Keep screens, models, services, and reusable widgets separate when appropriate.
- **Dependencies:** Avoid introducing unnecessary packages.
- **Collaboration:** Coordinate changes to shared files with other contributors.
- **Version control:** Work on feature branches rather than directly on `main`.

### Testing

Before submitting a Pull Request, run:

```bash
flutter analyze
flutter test
```

Also run the application to verify that your changes work as expected:

```bash
flutter run
```

---

## 4. Contribution Workflow

```text
Clone Repository
       ↓
Create Feature Branch
       ↓
Develop Assigned Functionality
       ↓
Test and Commit Changes
       ↓
Push Feature Branch
       ↓
Open Pull Request
       ↓
Review and Merge Into Main
```

This workflow is being proposed for this project because it allows contributors to work independently while maintaining a consistent and organized application.
