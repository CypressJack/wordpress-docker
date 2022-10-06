# Wordpress Development Container
## Features
- Wordpress 6.0.2
- MySQL 5.7
- PHP 7.4
- PHPMyAdmin
- Xdebug 3.0
- VSCode launch.json file to run debugger
## Getting Started
This repo is made to quickly bootstrap Wordpress development environments on Mac/Windows/Linux.
### Prerequisites
- Docker & Docker Compose installed
## URLs
- Wordpress:
`localhost:10000`
- PHPMyAdmin:
`localhost:10001` 
## Installation
1. Clone Repo
2. `cd wordpress-docker`
3. `docker compose up`
4. Navigate to `localhost:10000` and configure the Wordpress install
## Configuration
### xdebug.ini
- Set the param `xdebug.client_host` to your host machines IP address
- Add any additional xdebug configs you like
### custom.ini
- Add any PHP configuration params you'd like and it will override the containers defaults
## Debugging
1. Make sure the param `xdebug.client_host` in `xdebug.ini` has been set properly
2. Install PHP Debug Extension for VSCode:
[PHP Debug for VSCode](https://marketplace.visualstudio.com/items?itemName=xdebug.php-debug)
3. Install the Xdebug Extension for your browser:
[Xdebug Helper Chrome Extension](https://chrome.google.com/webstore/detail/xdebug-helper)
5. Make sure the container is running 
6. Open the root folder of this repo in VSCode
7. In the Debug tab click the play button beside 'Listen for Xdebug'
8. Open `localhost:10000` in your browser and enable the debugger extension
9. Set a breakpoint in `functions.php` of the current theme and see if it works, it should pause when reached