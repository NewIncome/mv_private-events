# _Private events_

> On this project we made a site where you can create events, invitations to said events, and see a full list of all the events past and upcoming. 

## Index
![image](https://i.imgur.com/ANc81bV.png)
## event show
![image](https://i.imgur.com/J8Qi2xX.png)

## Models

> For this project we used 3 models:
  - User:
    - Can post events
    - Can make invitations
    - Can receive invitations
    - Has many attended_events
    - Has many created_events
    - Has many created_invitations
  - Event:
    -Belongs to a creator
    -Has many invitations
    -Has many attendees
  - Invitation:
    -Belong to a user
    -Belong to a creator
    -Belong to an event

![image](https://i.imgur.com/ehiBMNf.png)

### How to use

You can either clone the repo and play with it on your machine
To clone do:

- Cloning the repo:
  ```
  $ git clone git@github.com:NewIncome/mv_private-events.git
  ```
- cd into the new folder:
  ```
  $ cd mv_private-events
  ```
- Checkout to the correct branch (for this review *_ft/models_*):
  ```
  $ git checkout *_ft/models_*
  ```
- bundle the necessary gems
  ```
  $ bundle
  ```
- yarn the necessary packages
  ```
  $ yarn install --check-files
  ```
- migrate and seed
  ```
  $ rails db:migrate db:seed
  ```
- launch the developer server
  ```
  $ rails s
  ```
- Loggin with this credentials
  ```
  User: yosept@gmail.com
  ```
## Built With

- Ruby
- Ruby on Rails

- bcrypt (gem)
- A bunch on gems used inside rails itself

## Authors

👤 **Joseph Flores**
- Github: [@YoseptF](https://github.com/YoseptF)
- Twitter: [@Yosept__](https://twitter.com/Yosept__)
- Linkedin: [Joseph Flores](https://www.linkedin.com/in/joseph-flores-928505106/)

👤 **Alfredo C.**
- Github: [@NewIncome](https://github.com/NewIncome)
- Twitter: [@J_A_fredo](https://twitter.com/J_A_fredo)
- Linkedin: [Alfredo C.](https://www.linkedin.com/in/alfredo-cardenas-62b021183 )