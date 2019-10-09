# Overview

This is a website which lets you challenge your friends for being late.  

Steps:  

1. You can select a challenge from a pre-made list of challenges  
2. Choose who to send the challenge to  
3. Edit the time for each part of the challenge  
4. Watch other people doing the challenges  
5. Upload your friend doing the challenge you sent them

## Installation
#### Assuming you have ruby and rails installed, to run this app locally do the following:
##### This section you do only once
* Given this repository you should copy the `.env.sample` file into an `.env` file inserting your own credentials.  
* Create a [cloudinary account](https://cloudinary.com/users/login) and add your API key to a .env file (which is already in gitignore)
* Run `yarn install --check-files`  
* Run `bundle install`  
* Run `rails db:create db:migrate`
* (OPTIONAL) run `rails db:seed` to add some default pre-made data

##### When developing the website, you need to only run the following step `rails s` to server the website locally.
