# Flutter Event App

This is a simple **Event Information App built with Flutter** to demonstrate how lists and UI layouts work in Flutter.

The app displays a list of events with their **image, title, description, and date** using a scrollable list.

## What You Will Learn

- Basic **Flutter project structure**
- Using important widgets like **Scaffold, Container, Column, Text, and Image**
- Displaying dynamic data using **ListView.builder**
- Working with **lists to manage app content**
- Designing simple UI layouts

## How the App Works

- The app loads a list of events stored in different lists such as **titles, descriptions, dates, and images**.
- `ListView.builder` dynamically builds the event cards.
- Each event card shows:
  - Event image
  - Event title
  - Event description
  - Event date
- Users can scroll to view all events.

## Key Concept

`ListView.builder` is used to efficiently display multiple items in a scrollable list.

Example:

```dart
ListView.builder(
  itemCount: titles.length,
  itemBuilder: (context, index) {
    return Text(titles[index]);
  },
);
```

## Output

**The app shows:**

- A scrollable list of events

- Each event includes:
  - Image
  - Title
  - Description
  - Date
