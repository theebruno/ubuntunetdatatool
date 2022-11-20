
# Project Title

Online Survey Tool for UbuntuNet Alliance

## Features

- User authentication
- Role based access
- survey data collection
- reporting


## Documentation

This website is made with laravel 8
learn more about laravel here:
https://laravel.com/docs/8.x

## Installation

Clone this repository

since the vendor folder is included

just run 
```bash
  php artisan serve
  
```

## Users of the app
the users of the system will include:

-Users
-Administrator

## Users

The users are in this case the NRENs wic are supposed to fill in the surveys and submit there reponses
What can a user do

-Answer survey
-View responses
-Edit there profile
-Edit there NREN iormation
-View tere NREN reports

NOTE: A user can only do this if they have been assigned to an NREN.

## Administrators 

The admin controls all features of the system.
what can admin do:

-Create and view surveys
-Edit and delete surveys
-Disable surveys
-Create and Assign NRENs to users.
-view various reports connected to NRENs
-Create users and assign rol
-Edit their profile.


## Functional requirements of the system

- Users and admins should be able to sign into the system.
- Users and admins should be authenticated basing on there roles.
- Users should be able to fill in the survey forms 
- Users should be able to view there responses.
- Users should be able to view there reponses.
- The app should be responsive to fit all screen sizes
- All admin features should also be working.

## DESIGN
The app has been made with;

-Laravel
-MYSQL database

### Database design
The process of constructing a model of the data used in an enterprise independent of all physical consideration ,(important entities, relationship, and attributes).

A database is usually a fundamental component of the information system, especially in business oriented systems. Thus database design is part of system development. The following picture shows how database design is involved in the system development lifecycle.

#### database structe
![database Screenshot](https://raw.githubusercontent.com/theebruno/ubuntunetdatatool/b0ac2bcd0329388bb9f3f50ed4652c27d82f25a3/public/screenshots/database.png)


#### folder structure
![folder Screenshot](https://raw.githubusercontent.com/theebruno/ubuntunetdatatool/b0ac2bcd0329388bb9f3f50ed4652c27d82f25a3/public/screenshots/folders.png)