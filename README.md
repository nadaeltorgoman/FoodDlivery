# Food Delivery App

This repository contains the code for a food delivery app, designed as an e-commerce solution for food delivery using Flutter. The app supports both iOS and Android platforms and features a Laravel backend with an admin panel for managing products and orders using RESTful API complete CRUD operations. Firebase is integrated for notifications.

## Summary

This crash course tutorial covers the development of a complete food delivery app, from setting up the Flutter frontend to implementing the Laravel backend and integrating Firebase notifications. The tutorial walks through building a shopping cart, placing orders, user authentication, payment processing, and more.

## Major Features

1. **Show Products Based on Category**
2. **Shopping Cart**
3. **Place Your Order**
4. **Track Order**
5. **User Profile**
6. **Sign In & Sign Up**
7. **User Address Location from Google Map**
8. **Zone-Based Order**
9. **User Authentication**
10. **Firebase Notification**
11. **Payment (PayPal)**
12. **Create New Products on the Backend**
13. **See Order Details**
14. **Update Order Status**

## Technologies Used

- **Flutter**: For building the app's UI.
- **Laravel**: For backend services and admin panel.
- **Firebase**: For notifications.
- **GetX**: As a state management system.
- **MVC**: Design pattern for structuring the app.

## Installation

### Prerequisites

- Flutter SDK
- PHP and Composer (for Laravel)
- MySQL (or any supported database)
- Firebase account

### Steps

1. **Clone the repository:**

   ```bash
   git clone https://github.com/nadaeltorgoman/FoodDeliveryApp.git
   cd FoodDeliveryApp
   ```

2. **Set up the Laravel Backend:**

   - Navigate to the Laravel project folder:

     ```bash
     cd backend
     ```

   - Install PHP dependencies:

     ```bash
     composer install
     ```

   - Set up environment variables:

     Copy the `.env.example` file to `.env` and update the necessary environment variables, including the database configuration.

     ```bash
     cp .env.example .env
     php artisan key:generate
     ```

   - Run database migrations and seeders:

     ```bash
     php artisan migrate --seed
     ```

   - Serve the backend:

     ```bash
     php artisan serve
     ```

3. **Set up the Flutter Frontend:**

   - Navigate to the Flutter project folder:

     ```bash
     cd ../frontend
     ```

   - Install Flutter dependencies:

     ```bash
     flutter pub get
     ```

   - Configure Firebase for iOS and Android:
     - Follow the [Firebase setup instructions](https://firebase.google.com/docs/flutter/setup) to add Firebase to your Flutter app.
     - Download the `google-services.json` file for Android and place it in the `android/app` directory.
     - Download the `GoogleService-Info.plist` file for iOS and place it in the `ios/Runner` directory.

   - Run the app:

     ```bash
     flutter run
     ```

## Features Overview

### Show Products Based on Category

Display products grouped by their respective categories, allowing users to browse and select items easily.

### Shopping Cart

A fully functional shopping cart where users can add, remove, and update items.

### Place Your Order

Users can place orders by filling out the required details and proceeding to payment.

### Track Order

Track the status of placed orders in real-time.

### User Profile

Manage user profile information, including viewing and updating personal details.

### Sign In & Sign Up

User authentication through registration and login screens.

### User Address Location from Google Map

Integrate Google Maps to allow users to select their address location.

### Zone-Based Order

Support for zone-based ordering, ensuring users can order only within their serviceable area.

### User Authentication

Secure user authentication using Laravel's built-in features.

### Firebase Notification

Real-time notifications for users using Firebase Cloud Messaging.

### Payment (PayPal)

Integrate PayPal for processing payments securely.

### Create New Products on the Backend

Admin panel to create new products and manage existing ones.

### See Order Details

View detailed information about each order from the admin panel.

### Update Order Status

Admin can update the status of orders to keep users informed.

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any changes you'd like to make.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

For any questions or suggestions, please contact:

- Your Name: [Nada El-Torgoman](mailto:nada.khalid.eltorgoman@gmail.com)
- GitHub: [Nada Eltorgoman](https://github.com/nadaeltorgoman)

---

Thank you for following this crash course tutorial on building a Food Delivery App!

---
