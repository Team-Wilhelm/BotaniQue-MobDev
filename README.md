# BotaniQue

Project by: Júlia Ilášová & Maria Ruth Nielsen <br>
Platforms: Web, Android, and iOS. <br><br>
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/d5b7bc34-5c5e-41fa-b11c-47974536f827)

## Overview

BotaniQue is a mobile application made with Flutter, designed to help users manage and monitor their plant collections. The app integrates with a Smart Plant Pot to offer real-time updates on plant conditions, providing a user-friendly interface for plant care. <br><br>
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/bce56095-7ec0-4642-b7ae-1ccb928aac3c)
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/e5474fe3-cc4c-47b2-9245-49cd33c3178b)
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/5dfacb27-66b1-4c44-8a48-ab241ad5293e)



## Features
### Plant Management

Add and edit plants with unique names, photos, and specified needs. The process is divided into steps to ensure ease of use. Specify ideal conditions for humidity, soil moisture, light, and temperature. <br><br>
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/0a743f81-9b61-4e60-9800-2595835a50f1) 
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/140eab2a-672a-4d93-8732-2dd31c383c44)
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/85648811-3653-46cc-bdc1-e85225e6fb4f)

### Smart Plant Pot Integration

Receive real-time alerts about plant conditions and take necessary actions. Access detailed plant information and fun facts by tapping on any plant. <br><br>
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/928f0672-f660-4fbe-a3cb-5cf7125c6e09)
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/e66a61cb-9cf0-40ae-9ae7-14718b7dfeb2)
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/b7be41d7-4c65-413e-bad1-e28aa7b82cc4)


### Overview and Collections

View an overview of all plants with filtering options. Manage collections by categories and update profile settings. <br><br>
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/01050157-e22c-4c13-8713-e17f650d438a)
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/796b2abe-9599-4793-bf84-c933e9956af7)
![image](https://github.com/Team-Wilhelm/BotaniQue-MobDev/assets/113031776/08dcc175-683d-4e83-b168-3e1b6fc8c49e)


## Project Setup

```bash
dart run build_runner build
```

```bash
dart run vector_graphics_compiler -i assets/foo.svg -o assets/foo.svg.vec
```

### To generate app icon 
```bash
flutter pub run flutter_launcher_icons
```

## To run app in production mode (connect to deployed BE)
```bash
flutter run --dart-define=CI=true
```

### To run the app locally on chrome (to ensure that pictures can be loaded)
1- Go to flutter\bin\cache and remove a file named: flutter_tools.stamp

2- Go to flutter\packages\flutter_tools\lib\src\web and open the file chrome.dart.

3- Find '--disable-extensions'

4- Add '--disable-web-security'
