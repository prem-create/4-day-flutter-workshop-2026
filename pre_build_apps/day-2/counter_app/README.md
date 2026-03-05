# Flutter Counter App

This is a simple **Counter App built with Flutter** to demonstrate how **Stateful Widgets** work.

The app displays a number on the screen and increases the count every time the user presses the **Floating Action Button**.

---

## What You Will Learn

* Difference between `StatelessWidget` and `StatefulWidget`
* How state works in Flutter
* Using `setState()` to update the UI
* Handling button clicks with `FloatingActionButton`

---

## How the App Works

1. The app starts with the counter value set to **0**.
2. When the user presses the **+ button**, the counter value increases.
3. `setState()` tells Flutter to rebuild the UI with the new value.

---

## Key Concept

`setState()` is used to notify Flutter that the state has changed and the UI needs to update.

Example:

```
tapCount = tapCount + 1;
setState(() {});
```

This updates the counter and refreshes the screen.

---

## Output

The app shows:

```
Counter App
no of time you have tapped: 0
```

Each tap on the **+ button** increases the number.

---

This small project is used to help beginners understand **how state updates the UI in Flutter**.
