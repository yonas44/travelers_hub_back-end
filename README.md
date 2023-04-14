<div align="center">
  <h3><b>Traveller's Hub Back-End</b></h3>
</div>

# 📗 Table of Contents

- [📖 About the Project](#[project])
  - [Kanban board](#kanban-board)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Setup](#setup)
  - [Available Scripts](#available-scripts)
- [👥 Authors](#author)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgments)
- [📝 License](#license)

# 📖 travellers_hub_back-end <a name="about-project"></a>

**travellers_hub_back-end** is a travel booking app where the user can register new accounts, login and book a set of different trip packages, users can add packages and delete them too. It is built and connected by using two different repos, including back-end(Rails) and front-end(React/Redux).

- You can find the front-end repository [here](https://github.com/yonas44/travelers_hub_front-end/tree/development).

## Kanban board <a name="kanban-board"></a>

- You can find the link to the Kanban board is [here](https://github.com/yonas44/travelers_hub_back-end/projects/1)
- Here is the [link](https://drive.google.com/file/d/1X4q7g6on_dwaV7B-1HnypSo__SrYG1xR/view?usp=sharing) to the initial Kanban board.
- A team of four collaborated in creating this web application.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li>HTML, CSS</li>
    <li>JavaScript</li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li>Ruby on Rails</li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

### Key Features <a name="key-features"></a>

- **User can register new accounts and login**
- **User can book a set of different trip packages**
- **User can add packages and delete them too**

## 🚀 Live Demo <a name="live-demo"></a>

- [Coming Soon]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

- <a href="https://www.ruby-lang.org/en/news/2022/11/24/ruby-3-1-3-released/">Ruby</a>
- <a href="https://rubyonrails.org/">Ruby on Rails</a>
- <a href="https://www.postgresql.org/">PostgreSQL</a>
- any code editor

### Setup

To setup the project follow the steps:

1.  Clone this project using Git Bash:

    ```
    git clone https://github.com/yonas44/travelers_hub_back-end.git
    ```

2.  Inside the project directory, install the project's dependencies

    ```
    bundle install
    ```

3.  Create the app's database

    ```
    rails db:create
    ```

4.  Setup the app's database
    ```
    rails db:setup
    ```
5.  Setup the credentials on your local project following:

- Run:
  ```
         rake secret
  ```
- Open the credentials file from the command line.

```
 EDITOR=nano rails credentials:edit
```

And paste in the following, with the key generated from running the rake secret above.

```
devise:
  jwt_secret_key: <rake secret key>
```

ctrl+x, then y, then enter to close and save if you’re using the nano editor.

### Usage

- To use the API documentation for the back-end end points, use this path to see the documentation after starting the back-end server:

```
http://localhost:3000/api-docs/index.html
```

### Available Scripts

In the project directory, you can run:

- ```
  rails server
  ```

  Runs the app local server

- ```
  bundle exec rspec
  ```
  Launches the test runner.

## 👥 Author <a name="authors"></a>

👤 **Oti Ifeanyi**

- GitHub: [@ifeanyi305](https://github.com/ifeanyi305)
- Twitter: [@ifeanyi305](https://twitter.com/ifeanyi2020)
- LinkedIn: [oti joseph](https://www.linkedin.com/in/oti-joseph-ifeanyi/)

👤 **Selma Hamutenya**

- GitHub: [@SelmaNdapanda](https://github.com/SelmaNdapanda)
- Twitter: [@SellohBlaq](https://twitter.com/sellohBlaq)
- LinkedIn: [selma-hamutenya](www.linkedin.com/in/selma-hamutenya)

👤 **Yonas Tesfu**

- GitHub: [@yonas44](https://github.com/yonas44)
- LinkedIn: [Yonas Tesfu](https://linkedin.com/in/yonas-tesfu)

👤 **Ben Salès**

- GitHub: [@adebsa2401](https://github.com/adebsa2401)
- Twitter: [@Adebsa3](https://twitter.com/Adebsa3)
- LinkedIn: [adebsa](https://www.linkedin.com/in/adebsa)

### 👤 Kidist Dinku

- GitHub: [Ney2](https://github.com/Ney2)
- Twitter: [@GutaKidist](https://twitter.com/GutaKidist)
- Linkedin: [Kidist Dinku](https://www.linkedin.com/in/kidist-guta/)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>

- **Add payment methods**

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## ⭐️ Show your support <a name="support"></a>

If you like this project give it a star!

## 🙏 Acknowledgments <a name="acknowledgements"></a>

- Microverse ❤️
- [Murat Korkmaz on Behance](https://www.behance.net/muratk) the author of the [original design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.
