# 📱 Anime App UI

This is a **UI-only anime streaming app**, designed to showcase clean and modular UI architecture for a mobile application.

## 🎯 App Purpose
The app provides a modern, user-friendly interface for an anime streaming experience. Users can:

- 🎥 View featured anime (e.g., *Demon Slayer*)  
- 🌟 See top anime characters  
- 💎 Check available subscription plans (monthly/annually)  
- 🧭 Navigate between home and upgrade screens  

## 🧼 Clean UI Architecture
The app follows a **modular structure** inspired by Clean Architecture but focused on the **presentation/UI layer only**.

## 📁 Project Structure
lib/
├── core/
│   └── constants/       # App-wide constants (e.g., colors, strings, styles)

├── features/
│   └── home/
│       ├── data/        # Placeholder for models or mock data
│       └── ui/
│           ├── screens/ # Main UI screens (Home, Details, Subscription)
│           └── widgets/ # Reusable UI components (e.g., cards, buttons)


## 💡 Why This Structure?
✅ Separation of concerns: Each part of the UI is isolated for clarity and reusability.  
📦 Scalable: Easy to add more features/modules (e.g., profile, search, watchlist).  
🧪 Testable: Easier to test UI components individually.  
💅 Reusable: Widgets can be reused across screens or features.  


## 📸 Demo

https://github.com/user-attachments/assets/75ba80bd-9faf-44a8-9742-32cf003ec42e


