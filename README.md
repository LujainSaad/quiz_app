# Quiz App 💟

This app is a simple and interactive quiz application built using Flutter. It allows users to answer a series of questions and get immediate feedback on their performance.

![ScreenRecording2024-07-15at11 01 07PM-ezgif com-video-to-gif-converter](https://github.com/user-attachments/assets/74cb1288-1331-47ce-b29a-9884e022eb22)

## Features

- **Multiple Choice Questions**: Users can select an answer from multiple choices.
- **Instant Feedback**: The app provides immediate feedback on whether the selected answer is correct or incorrect.
- **Score Tracking**: The app tracks the user's score throughout the quiz.
- **Responsive Design**: Adaptive layout that works on both Android and iOS devices.

## Technologies Used

- **Flutter**: For building the cross-platform mobile application.
- **Dart**: The programming language used for Flutter development.

## Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

- Flutter SDK
- Android Studio or Visual Studio Code (with Flutter and Dart plugins installed)
- A physical or virtual device for running the app

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/LujainSaad/quiz_app.git
   ```

2. Navigate to the project directory:
   ```bash
   cd quiz_app
   ```

3. Install the required dependencies:
   ```bash
   flutter pub get
   ```

4. Run the app on your desired device:
   ```bash
   flutter run
   ```

## Project Structure

```plaintext
quiz_app/
│
├── lib/
│   ├── main.dart             
│   │
│   ├── models/                
│   │   └── question.dart     
│   │
│   ├── screens/               
│   │   ├── quiz_screen.dart   
│   │   └── result_screen.dart 
│   │
│   ├── widgets/               
│   │   ├── answer_button.dart 
│   │   ├── question_text.dart 
│   │   ├── quiz.dart          
│   │   └── result.dart        
│
└── pubspec.yaml               
```


## Contributing

Contributions to enhance the app are welcome. Please follow the standard fork-and-pull request workflow:

1. Fork the repository.
2. Create a new branch for your feature (`git checkout -b feature/AmazingFeature`).
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`).
4. Push to the branch (`git push origin feature/AmazingFeature`).
5. Open a pull request.

