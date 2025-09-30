<img width="1133" height="757" alt="image" src="https://github.com/user-attachments/assets/648e19a9-6ade-4943-8e2f-34a0309490bb" /># 🛒 E-Commerce App  

Cross-platform E-Commerce mobile application built with **Flutter** using **Clean Architecture (MVVM)**.  

## 🚀 Features  
- 🔐 User Authentication (Login / Register)  
- 🏬 Browse Products (Categories & Details)  
- 🛍️ Add to Cart & Checkout Flow  
- ❤️ Wishlist / Favorites  
- 📦 Order Management (Cart, Checkout, Tracking)  
- 💾 Local Storage for user session & cache  

## 🛠️ Tech Stack  
- **Flutter (Dart)**  
- **MVVM + Clean Architecture**  
- **Bloc / Cubit** (State Management & Dependency Injection)  
- **Retrofit + dio** for API calls  
- **JsonSerializable + BuildRunner** for models  
- **SharedPreferences** (Local Storage)  

## 📂 Project Structure
```plaintext
lib/
├── api/               # Models, mappers, data sources (remote/local), Dio client
├── data/              # Abstract datasources & repository implementations
├── domain/            # Entities, repository interfaces, usecases
├── feature/           # UI layer (screens, widgets, Cubit/Bloc, ViewModels)
├── core/              # Constants, utils, error handling, base classes
├── config/            # App configuration (dependency injection, bloc observer)
└── main.dart          # Entry point

```

## 📸 Screenshots  

<p align="center">
  <img src="https://github.com/user-attachments/assets/9bd20211-681b-4c81-80ba-9979e07b13fd" alt="App Preview" width="800"/>
</p>

 

## 🤝 Contributing  
Pull requests are welcome! For major changes, please open an issue first to discuss what you would like to change.



