BookYourFlight
This project is a flight booking app developed using SwiftUI, aimed at demonstrating the concept of environment objects for managing shared data across different screens. The app consists of three main screens: a login screen, a dashboard screen for inputting travel requirements, and a search loading screen.


Overview:
This project is a flight booking app developed using SwiftUI, aimed at demonstrating the concept of environment objects for managing shared data across different screens. The app consists of three main screens: a login screen, a dashboard screen for inputting travel requirements, and a search loading screen.

Features:

Login Screen:

Allows users to enter their username and password.
Utilizes @State properties to manage text input fields and handle login actions.
Dashboard Screen:

After successful login, users are navigated to the dashboard screen.
Provides a user interface for inputting travel requirements, such as pickup and drop stations.
Uses @EnvironmentObject to pass and observe shared data between views.
Demonstrates updating the UI based on changes to shared data.
Search Loading Screen:

Upon submission of travel requirements, users are directed to the search loading screen.
Displays a loading screen while performing the search operation with travel requested details.

Note:
This flight booking app is a demo project intended for learning purposes and understanding SwiftUI concepts, such as environment objects and integrating UIKit components within SwiftUI views.



![App](https://github.com/urshu2296/BookYourFlight/assets/157149784/8032a5f0-e43f-475a-ace6-a231cd1a687e)



