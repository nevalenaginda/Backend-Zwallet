<h1 align="center">Backend - Zwallet</h1>
<p align="center">
  <a href="http://zwallet-webku.naginda.site/" target="_blank"><img src="https://github.com/chaerulmarwan20/zwallet-frontend/raw/master/public/images/Zwallet.png" width="400" alt="Zwallet" border="0" /></a>
</p>

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Built With](#built-with)
- [Prerequisites](#prerequisites)
- [Endpoint](#endpoint)
- [Installation](#installation)
- [Related Project](#related-project)

## Introduction

My Zwallet Web is an E-Wallet Application with PIN and Password security so that users can transact safely. This is the backend service for this app. You can see the frontend service [disini](https://github.com/nevalenaginda/Backend-Zwallet/tree/week2).

## Features

- JWT authentication with cookie

- Nodemailer for email verification

- Upload image using multer

- CRUD for all tables required in the application

## Built With

- [Express](https://expressjs.com/)
- [Nodemon](https://www.npmjs.com/package/nodemon)
- [MySQL2](https://www.npmjs.com/package/mysql2)
- [Cors](https://www.npmjs.com/package/cors)
- [Dotenv](https://www.npmjs.com/package/dotenv)
- [Morgan](https://www.npmjs.com/package/morgan)
- [Bcrypt](https://www.npmjs.com/package/bcrypt)
- [JWT](https://www.npmjs.com/package/jsonwebtoken)
- [Multer](https://www.npmjs.com/package/multer)
- [Nodemailer](https://www.npmjs.com/package/nodemailer)
- [CookieParser](https://www.npmjs.com/package/cookie-parser)

## Prerequisites

- [NodeJs](https://nodejs.org/en/download/)
- [XAMPP](https://www.apachefriends.org/index.html)

## Endpoint

- User

|  METHOD  |                    API                     |
| :------: | :----------------------------------------: |
|  `GET`   |                  /api/allUser/:id          |
|  `GET`   |                    /api/user/:id           |
|  `GET`   |                     /api/profile           |
|  `GET`   |           /api/activate/:token/:email      |
|  `POST`  |                    /api/login              |
|  `POST`  |                  /api/register             |
|  `PATCH` |                  /api/user/:id             |
|  `POST`  |                 /api/user/:id              |
|  `PATCH` |            /api/changePassword/:id         |
|  `POST`  |             /api/forgotPassword            |
|  `GET`   | /api/resetPassword/:token/:email/:password |


- Transfer

| METHOD |                    API                     |
| :----: | :----------------------------------------: |
| `POST` |               /api/transfer/:id            |
| `POST` |           /api/transferProcess/:id         |
| `POST` |            /api/transferSuccess/:id        |
| `POST` |             /api/transferCancel/:id        |
| `POST` |                  /api/topUp/:id            |


- History

| METHOD |                    API                     |
| :----: | :----------------------------------------: |
| `GET`  |              /api/history/:id              |
| `GET`  |               /api/historyAdmin            |
| `GET`  |            /api/notifications/:id          |
| `GET`  |            /api/detailHistory/:id          |
| `POST` |                /api/history                |
| `PATCH`|              /api/history/:id              |


## Installation

1. Open your terminal or command prompt. Then, clone the repository `git clone https://github.com/nevalenaginda/Backend-Zwallet.git`
2. Create database named `zwallet` and import `zwallet.sql` from this repository
3. Go to directory `cd Backend-Zwallet`
4. Install all required packages `npm install`
5. Create a new file named `.env`
```
PORT = (The port you are using, for example 5000)
DB_HOST = localhost
DB_USER = root
DB_PASSWORD = 
JWT_SECRET= (For example AsxW123)
FROM_EMAIL = (The email you used to send the verification message)
EMAIL_PASS = (Your email password, for example Password1234 #)
FRONTEND_PATH = (Your frontend address, for example http: // localhost: 3000)
```
6. Run server `npm run dev'

## Related Project

- :white_check_mark: [`Frontend Zwallet`](https://github.com/nevalenaginda/Frontend-Zwallet/tree/week2)
- :rocket: [`Production`](http://zwallet-webku.naginda.site/)
