<!-- PROJECT INFO -->
<h1 align="center">
  <br>
  <a href="https://github.com/marlitas/ArtspirationFE">
    <img src="https://user-images.githubusercontent.com/80797707/133871214-025c2c08-a269-470d-97a3-31aa34a2cabe.jpg" alt="Logo" width="200" height="200"></a>
  <br>
  Artspiration
  <br>
</h1>

<h4 align="center">The backend portion of a fun online application to rate and find cool artwork!</h4>

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
  <a href="#how-to-use">How To Use</a> •
  <a href="#roadmap">Roadmap</a></li> •
  <a href="#contributing">Contributing</a>
</p>



## About The Project

![Artspiration Screenshot](cool screenshot)

The frontend of Artspiration provides users with a daily art piece that they can like, dislike, and add to their artboard in hopes to give users a way to find new artwork and exciting new artists.

### Learning Goals

* Google OAuth Implementation for user login and registration
* Using an Agile process throughout development
* Setting up continuous integration and continuous deployment
* Using project management tool Github Project
* Demoing project to the project manager
* Building a backend API for frontend consumption
* Consuming endpoints and manipulating the JSON responses
* Handling large group dynamics with short 3 day sprints
* Working with Machine Learning outputs and implementing into app
* Consuming Google Cloud Vision API



## Tools Used

| Development | Testing       | Gems            |
|   :----:    |    :----:     |    :----:       |
| Ruby 2.7.2  | RSpec         | Pry             |
| Rails 5.2.5 | WebMock       | ShouldaMatchers |
| JSON        | VCR           | Faraday         |
| Atom        | SimpleCov     | Figaro          |
| Github      | FactoryBot    | FastJSON        |
| TravisCI    | Faker         | Bootstrap       |
| Heroku      |               |                 |



## Set Up

To clone and run this application, you'll need Ruby 2.7.2 and Rails 2.5.3. Using [rbenv](https://github.com/rbenv/rbenv) you can install Ruby 2.7.2 (if you don't have it already) with:
```sh
rbenv install 2.7.2
```
With rbenv you can set up your Ruby version for a directory and all subdirectories within it. Change into a directory that will eventually contain this repo and then run:
```sh
rbenv local 2.7.2
```
You can check that your Ruby version is correct with `ruby -v`

Once you have verified your Ruby version is 2.7.2, check if you have Rails. From the command line:
```sh
rails -v
```
If you get a message saying rails is not installed or you do not have version 5.2.5, run
```sh
gem install rails --version 5.2.5
```
You may need to quit and restart your terminal session to see these changes show up



## Installation

1. Get a free API Key at [Artsy API](https://api.artsy.net)
2. Clone the repo
   ```sh
   git clone https://github.com/marlitas/ArtspirationBE.git
   ```
3. Install gems
   ```sh
   bundle install
   ```
4. Install figaro
    ```sh
   bundle exec figaro install
   ```
5. Enter your API in `application.yml`
   ```ruby
   artsy_api_key = <ENTER YOUR API>
   google_api_key = <ENTER YOUR API>
   ```
6. Setup the database
    ```sh
   rails db:create
   rails db:migrate
   ```


## How To Use

Use this space to show useful examples of how a project can be used. Additional screenshots, code examples and demos work well in this space. You may also link to more resources.



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
- [LinkedIn](https://www.linkedin.com/in/dee/)
