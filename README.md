<!-- PROJECT INFO -->
<h1 align="center">
  <br>
  <a href="https://github.com/marlitas/ArtspirationFE">
    <img src="https://user-images.githubusercontent.com/80797707/133871214-025c2c08-a269-470d-97a3-31aa34a2cabe.jpg" alt="Logo" width="200" height="200"></a>
  <br>
  Artspiration
  <br>
</h1>

<h4 align="center">The frontend portion of a fun online application to rate and find cool artwork!</h4>

<p align="center">
  <a href="https://github.com/marlitas/ArtspirationFE/graphs/contributors">
    <img src="https://img.shields.io/github/contributors/marlitas/ArtspirationFE?style=for-the-badge" alt="contributors_badge">
  </a>
  <a href="https://github.com/marlitas/ArtspirationFE/network/members">
    <img src="https://img.shields.io/github/forks/marlitas/ArtspirationFE?style=for-the-badge" alt="forks_badge">
  </a>
  <a href="https://github.com/marlitas/ArtspirationFE/stargazers">
    <img src="https://img.shields.io/github/stars/marlitas/ArtspirationFE?style=for-the-badge" alt="stars_badge">
  </a>
  <a href="https://github.com/marlitas/ArtspirationFE/issues">
    <img src="https://img.shields.io/github/issues/marlitas/ArtspirationFE?style=for-the-badge" alt="issues_badge">
  </a>
  <a href="">
    <img src="https://img.shields.io/travis/com/marlitas/ArtspirationFE?style=for-the-badge" alt="build_badge">
  </a>


<!-- CONTENTS -->
<p align="center">
  <a href="#about-the-project">About The Project</a> •
  <a href="#tools-used">Tools Used</a> •
  <a href="#set-up">Set Up</a> •
  <a href="installation">Installation</a> •
  <a href="#Oauth-Integration">Oauth Integration</a> •
  <a href="#how-to-use">How To Use</a> •
  <a href="#roadmap">Roadmap</a></li> •
  <a href="#contributing">Contributing</a> •
  <a href="#acknowledgements">Acknowledgements</a>
</p>



## About The Project

![Artspiration Screenshot](cool screenshot)

The frontend of Artspiration provides users with a daily art piece that they can like, dislike, and add to their artboard in hopes to give users a way to find new artwork and exciting new artists.

### Learning Goals

* Google OAuth Implementation for user login and registration
* Building a frontend app that consumes backend APIs
* Exposing endpoints and consuming JSON responses
* Setting up continuous integration and continuous deployment
* Using an Agile process throughout development
* Using project management tool Github Project
* Demoing project to the project manager
* Handling large group dynamics with short 3 day sprints



## Tools Used

| Development | Testing       | Gems            |
|   :----:    |    :----:     |    :----:       |
| Ruby 2.7.2  | RSpec         | Pry             |
| Rails 5.2.5 | WebMock       | ShouldaMatchers |
| JSON        | VCR           | Faraday         |
| Atom        | SimpleCov     | Figaro          |
| Github      | FactoryBot    | FastJSON        |
| TravisCI    | Faker         | Bootstrap       |
| Heroku      |               | Omniauth        |



## Set Up

1. To clone and run this application, you'll need Ruby 2.7.2 and Rails 2.5.3. Using [rbenv](https://github.com/rbenv/rbenv) you can install Ruby 2.7.2 (if you don't have it already) with:
```sh
rbenv install 2.7.2
```
2. With rbenv you can set up your Ruby version for a directory and all subdirectories within it. Change into a directory that will eventually contain this repo and then run:
```sh
rbenv local 2.7.2
```
You can check that your Ruby version is correct with `ruby -v`

3. Once you have verified your Ruby version is 2.7.2, check if you have Rails. From the command line:
```sh
rails -v
```
4. If you get a message saying rails is not installed or you do not have version 5.2.5, run
```sh
gem install rails --version 5.2.5
```
5. You may need to quit and restart your terminal session to see these changes show up



## Installation

In the terminal

1. Clone this repo:
```sh
git clone https://github.com/marlitas/ArtspirationFE.git
```
2. Install gems:
```sh
bundle install
```
3. Setup the database:
```sh
rails db:create
rails db:migrate
```

## Oauth Integration
We integrated Google Oauth into the application as both a learning goal, and a way to make app functionality easier for the user. By using the gem omniauth, we also open more opportunities to integrate further Oauth providers into our app such as: facebook, twitter, github, and more. 

## How To Use

To use artspiration you can visit our homepage and login with your google account. From there you will see a randomly chosen art piece, that will start to be curated by our recommendation engine after you have rated 4 pieces. Our images are sent through Google's Cloud Vision API, returning labels that we store and rank in our database. Our recommendation engine then uses a content-filtering methodology to predict art each user may like. A dot product algorithm runs through all categories a user has ranked and all categories associated with an art piece to calculate a recommendation score. 

Through your dashboard you can access an index page that contains all the work you have liked in the past, as well as a show page for each image. Logout to end your session!



## Roadmap



## Contributing

👤  **Jacob Piland**
- [GitHub](https://github.com/jtpiland)
- [LinkedIn](https://www.linkedin.com/in/jacob-piland/)

👤  **Marla Schulz**
- [GitHub](https://github.com/marlitas)
- [LinkedIn](https://www.linkedin.com/in/marla-a-schulz/)

👤  **Kim Abcouwer**
- [GitHub](https://github.com/kabcouwer)
- [LinkedIn](https://www.linkedin.com/in/kim-abcouwer/)

👤  **Jason Knoll**
- [GitHub](https://github.com/JasonPKnoll)
- [LinkedIn](https://www.linkedin.com/in/jason-p-knoll/)

👤  **Alex Klick**
- [GitHub](https://www.github.com/alexklick)
- [LinkedIn](https://www.linkedin.com/in/alex-klick/)

👤  **Dee H**
- [GitHub](https://github.com/deebot10)
- [LinkedIn](https://www.linkedin.com/in/dee-hill/)



## Acknowledgements

* [Turing School of Software and Design](https://turing.edu/)
  - Project created for completion towards Backend Engineering Program
* [Artsy API](https://www.api.artsy.net/)
* [Google Cloud Vision API](https://cloud.google.com/vision)
