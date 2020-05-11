Point Of Sales

POS ini menggunakan CoreUI Bootstrap Admin Template

## Table of Contents

- [Table of Contents](#table-of-contents)
  - [Databases](#databases)
    - [Configuration](#configuration)
  - [Ready-App](#ready-app)
    -[Desktop](#desktop-app)
  - [Project](#project) 
    - [Prerequisites](#prerequisites)
      - [Node.js](#nodejs)
      - [Angular CLI](#angular-cli)
    - [Installation](#installation)
      - [Clone repo](#clone-repo)
      - [Request module global](#req-module-global)
        - [Nodemon](#nodemon)
        - [Pkg](#pkg)

## Databases
Gunakan Mysql atau Maria Db.

- mysql dengan user root harus menggunakan plugin mysql_native_password
- Maria-DB version 10.4.11 atau terbaru dari XAMPP

### Configuration

- database: pos_gigih985042
- host: localhost
- user: root
- password: (kosongkan)

## Ready-App

### Desktop

Windows
  - Backend app : klik pos-backend-rev-win.exe
  - Frondend app : masuk ke folder point-of-sales-win32-x64 , lalu klik point-of-sales.exe

## Project

### Prerequisites

#### Node.js
Angular 9 requires `Node.js` version 10.13 or later.

- To check your version, run `node -v` in a terminal/console window.
- To get `Node.js`, go to [nodejs.org](https://nodejs.org/).

#### Angular CLI
Install the Angular CLI globally using a terminal/console window.
```bash
npm install -g @angular/cli
```

### Installation

#### Clone repo

Frontend

``` bash
# clone the repo
$ git clone https://github.com/iongie/Point-of-sales---Frontend.git pos-frontend

# go into app's directory
$ cd pos-frontend

# install app's dependencies
$ npm install
```

Backend

``` bash
# clone the repo
$ git clone https://github.com/iongie/Point-of-sales-backend.git pos-backend

# go into app's directory
$ cd pos-backend

# install app's dependencies
$ npm install
```

#### Request module global

##### Nodemon

Install the Nodemon globally using a terminal/console window.
```bash
npm install -g nodemon
```

##### Pkg

Install the Nodemon globally using a terminal/console window.
```bash
npm install -g nodemon
```








