[![Maintainability](https://api.codeclimate.com/v1/badges/897617cf52216be01c72/maintainability)](https://codeclimate.com/github/shivabhusal/quote_api_7/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/897617cf52216be01c72/test_coverage)](https://codeclimate.com/github/shivabhusal/quote_api_7/test_coverage)
# Quote

This app responds with a random quote everytime the API is hit.
Response is available in different format like `HTML`, `JSON`, `XML`.

---

This README documents whatever steps are necessary to get the
application up and running.

---

## API Usage
### XML
```ruby
/quote.xml
```

```xml
<quote>
    <id>544</id>
    <title>Hard work will always overcome natural talent when natural talent does not work hard enough</title>
    <author>Sir Alex Ferguson</author>
    <url>http://example.com/quote.xml</url>
</quote>
```
### JSON
```ruby
/quote.json
```

```json
id	679
title	"I don't think there's anything sadder than when two people are meant to be together and something intervenes."
author	"Walter Bishop (Fringe)"
url	"http://example.com/quote.json"
```

---

## Rails App Basic Architecture
  ![Rails App architecture](https://raw.githubusercontent.com/mdang/resources/master/ruby/rails/rails_architecture.png)

## UML Class Diagram
![class-diagram.png](class-diagram.png)

---

## Some Important Details

* Ruby version: **2.7.2**
* Rails version: **7.0.3**

* System dependencies
    - Postgresql Database

* Configuration
    - Seed data before running the app
    ```ruby
        rails db:seed
    ```

* Database creation/initialization

    ```bash
        rails db:setup
    ```

* How to run the test suite
    ```bash
        bin/rspec spec
    ```

* Deployment instructions
  - to deploy to heroku, follow the following link
  - https://devcenter.heroku.com/articles/getting-started-with-rails6
