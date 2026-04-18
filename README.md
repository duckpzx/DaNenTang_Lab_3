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

## 🎬 Video

### Login & Register
<video src="https://github.com/user-attachments/assets/5680df03-341d-4aab-b7d7-6c6584a379e9" controls width="600"></video>

### Reset Password
<video src="https://github.com/user-attachments/assets/c16dca89-bf12-4db8-8560-685dd3013409" controls width="600"></video>

### API Demo
<video src="https://github.com/user-attachments/assets/76f4fa4e-c5f4-41f8-b0ca-9264d24995d3" controls width="600"></video>
"# DaNenTang_Lab_3" 


