<p align="center">
  <h1 align="center">MovieLab</h1>

  <p align="left">
    MovieLab is an open source mobile application for browsing movies and TV shows, including cast, production crew and personal biographies and plot summaries.
    With MovieLab, you have movies and tv series information right at your fingertips.
  </p>
  <p align="left">
  Do you like movies? Try MovieLab <a href="https://github.com/ErfanRht/MovieLab/releases/">here</a>, or if you are a developer click <a href="https://github.com/ErfanRht/MovieLab#getting-started">here</a>.
  </p>
</p>

[![GitHub release (latest)](https://img.shields.io/github/v/release/ErfanRht/MovieLab)](https://github.com/ErfanRht/MovieLab/releases)
![GitHub repo size](https://img.shields.io/github/repo-size/ErfanRht/MovieLab)
[![GitHub stars](https://img.shields.io/github/stars/ErfanRht/MovieLab?style=social)](https://github.com/ErfanRht/MovieLab/stargazers) 
[![GitHub forks](https://img.shields.io/github/forks/ErfanRht/MovieLab?style=social)](https://github.com/ErfanRht/MovieLab/network/members) 
[![GitHub issues](https://img.shields.io/github/issues/ErfanRht/MovieLab?style=social)](https://github.com/ErfanRht/MovieLab/issues) 
[![GitHub license](https://img.shields.io/github/license/ErfanRht/MovieLab?style=social)](https://github.com/ErfanRht/MovieLab/blob/master/LICENSE) 

<p align="center"><a href="https://github.com/ErfanRht/MovieLab/"><img src="./screenshots/mockups/MovieLab_mockup2.jpg" width="100%"/></a><a href="#nastyox"><img src="http://randojs.com/images/dropShadow.png" width="100%"/></a></p><br/>
<!-- This effect image is from https://github.com/nastyox/Rando.js#nastyox project -->

## Screenshots
<img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_01.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_02.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_03.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_04.jpg?raw=true" width="23%" /><img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_05.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_06.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_07.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_08.jpg?raw=true" width="23%" /><img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_09.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_10.jpg?raw=true" width="23%" /> <img src="https://github.com/ErfanRht/MovieLab/blob/master/screenshots/Screenshot_11.jpg?raw=true" width="23%" />

## Download
  You can simply download it for Android from [Here](https://ErfanRht.github.io/MovieLab-Intro).
  
## Getting Started
1. If you don't have Flutter SDK installed; Please visit the official [Flutter](https://docs.flutter.dev/get-started/install) website.
2. Fetch the latest source code from the master branch.

``` 
git clone https://github.com/ErfanRht/MovieLab.git
```

3. Add api key.

<ul>

MovieLab uses the IMDb API to fetch the needed data, so before using it you have to create an account on [IMDb api website](https://imdb-api.com/Identity/Account/Register), then you can get a free api key in your profile section and apply it to the app by the below steps.

- go to `lib/.api.dart`
- you will see the code like this
```dart
List<String> apiKeys = ["XXXXXXXXXX"];
```
- replace the all `xx..` to your own api key, like this
```dart
List<String> apiKeys = 'your_api_key_here';
```
- It's done!
</ul>

4. Run the app with Android Studio or Visual Studio. Or the command line.

``` 
flutter pub get
flutter run
```

## Contribute
If you have an issue or found a bug, please raise a GitHub issue [here](https://github.com/ErfanRht/MovieLab/issues). Pull requests are also welcome.

## License
This project is licensed under the [Apache-2.0 License](https://github.com/ErfanRht/MovieLab/blob/master/LICENSE).

## Author
This Flutter project is developed by [Erfan Rahmati](https://github.com/ErfanRht).

## Contact
You can reach out to me directly at [erfanrht2005@gmail.com](mailto:<erfanrht2005@gmail.com>).

## Supporters
[![Stargazers repo roster for @ErfanRht/MovieLab](https://reporoster.com/stars/ErfanRht/MovieLab)](https://github.com/ErfanRht/MovieLab/stargazers)
[![Forkers repo roster for @ErfanRht/MovieLab](https://reporoster.com/forks/ErfanRht/MovieLab)](https://github.com/ErfanRht/MovieLab/network/members)

---

<div align="center">

### Show some ❤️ by starring 🌟 the repository!

</div>
