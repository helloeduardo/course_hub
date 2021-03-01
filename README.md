# Course Hub
  <p align="center">
    Course Hub is a course management platform for students. Students are able to log in and view available courses, register for courses, view their course registrations, and cancel their registrations.
  </p>
</p>


<!-- TABLE OF CONTENTS -->
## Table of Contents

* [Getting Started](#getting-started)
  * [Prerequisites](#prerequisites)
  * [Installation](#installation)
  * [Schema](#schema)
* [Usage](#usage)
* [Testing](#testing)


<!-- GETTING STARTED -->
## Getting Started

To use CourseHub locally, you can clone this repo.

### Prerequisites
* [Ruby 2.5.3](https://github.com/ruby/ruby)
* [Rails 5.2.4.4](https://github.com/rails/rails)

### Installation
Below are the commands you will need to run in your terminal once you are inside the course_hub directory.

* Bundle Install
```
$ bundle exec install
```
* Set up Database
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

### Schema

After running your migrations, your schema will look something like this!
<br />
<p align="center">
    <img src="https://user-images.githubusercontent.com/56360157/109468618-171e2a00-7a2a-11eb-9200-0bdcc0ef4107.png">
</p>


<!-- USAGE EXAMPLES -->
## Usage

Run ```rails s``` in your terminal and visit ```http://localhost:3000/``` in your browser

A default user will be seeded to the database. You may log in as that user using the email `user@example.com`.

Once you are logged in you are redirected to your dashboard, where you may view your course registrations or view available courses.

<!-- USAGE EXAMPLES -->
## Testing
Below is the command you will need to run in your terminal once you are inside the course_hub directory to run tests built with RSpec.

```
$ bundle exec rspec
```

After running the tests, you may view the test coverage file with the following command:
```
$ open coverage/index.html
```
