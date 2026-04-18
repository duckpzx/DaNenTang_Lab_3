# Lab3 - Form, Navigation & Get API with Dio

## Cấu trúc project

```
lib/
├── main.dart                        # Khởi tạo app, định nghĩa routes
├── services/
│   └── api_service.dart             # Gọi API bằng Dio
└── screens/
    ├── login_screen.dart            # Màn hình đăng nhập
    ├── signup_screen.dart           # Màn hình đăng ký
    ├── reset_password_screen.dart   # Màn hình reset mật khẩu
    └── home_screen.dart             # Màn hình sau đăng nhập
```

## Cài đặt & chạy

```bash
flutter pub get
flutter run
```

## Mock API

Endpoint: `https://69e2d77e3327837a1552a63e.mockapi.io/login`

Fields: `username`, `email`, `password`

- **Đăng ký**: POST tạo user mới
- **Đăng nhập**: GET filter theo `email` + `password`

---

## 🎬 Demo Video

[![▶ Xem Demo Videos](https://img.shields.io/badge/▶%20Xem%20Demo%20Videos-Click%20vào%20đây-blue?style=for-the-badge)](Video/)

| Video | Mô tả |
|-------|-------|
| [▶ Login & Register](Video/login&register.mp4) | Demo đăng nhập và đăng ký |
| [▶ Reset Password](Video/reset.mp4) | Demo reset mật khẩu |
| [▶ API](Video/api.mp4) | Demo gọi API |
"# DaNenTang_Lab_3"

