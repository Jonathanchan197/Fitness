# :muscle: Workout Tracker
[Try it out here!](http://jc197-workout-tracker.herokuapp.com/)
- Admin Account - Username: toto@ga.co Password: chicken
- User Account -  Username: gogo@ga.co Password: chicken
## Features
- Make your workout routines from existing exercises or create your own
- Create exercises with links to Youtube videos
- See which exercises train which muscle groups, vice versa
- Share and track other user routines
- Upload avatars to be displayed in your profile
- Login and Register
    - User sessions
- Admin-only functions
    - View all users
    - Delete and edit any page
- Icon indicator to show user rank

## Table of Contents
- [Technologies](#Technologies)
- [Models](#Models)
- [What I learned](#What-I-learned)
- [Future Features](#To-do)
- [Screenshots](#Screenshots)
- [Acknowledgements](#Acknowledgements)

## Technologies
- Ruby v2.7.6
- Ruby on Rails v5.2.8.1
- CSS
- HTML5
- Ruby Gems
    - Youtube-Rails
    - bcrypt
- [Heroku](https://www.heroku.com/)
- [Cloudinary](https://cloudinary.com/)

## Models
I first planned out the CRUD systems I would use and generated an ERD diagram to see the different models and associations

![ERD Diagram](/app/assets/images/ERD.png)

### What I learned
1. Building CRUD systems
2. Associating models (one-to-many, many-to-many)
3. Ruby and Rails proficiency
4. Nested forms
    - Checkbox based on current associations
    - Forms using builders by association
5. Improved CSS styling
6. Deploying a local project online via [Heroku](https://www.heroku.com/)
7. User image-upload via [Cloudinary](https://cloudinary.com/)

### To do
- [x] Cloudinary Image Upload
- [ ] Build second version with bootstrap
- [ ] Email authenticate

## Screenshots
![Homepage](/app/assets/images/Homepage.png)
![Homepage(Logged-In](/app/assets/images/LoggedIn.png)
![All Routines](/app/assets/images/Myroutines.png)
![Routine List](/app/assets/images/Routinelist.png)
![Create Routine](/app/assets/images/Createroutine.png)
![Exercise List](/app/assets/images/Exerciselist.png)
![Exercise Show](/app/assets/images/Exerciseshow.png)
![Admin Users](/app/assets/images/Allusers.png)

### Acknowledgements
Thank you Loden and Joel
