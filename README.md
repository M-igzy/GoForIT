# Journal App [Avion]

## Journal App using Rails v6

* ### **Demo Link** - https://isaac-journal-app.herokuapp.com/

## Functionalities:

* ### **Private Journal CRUD with Foreign Keys**

1. CRUD using `rails g model Journal` for creation of models/tables. <br/>

2. Devise used by `rails g devise:install` for Users' own Set of Personal Journal/Category with Tasks and Description.

* ### **Cloning the App**

1. `git clone https://github.com/IsaacSarte/journal-app.git`


* ### **What to do after Cloning**

1. In the root path of the app, type `bundle install`

2. Next, type `npm install`

3. Create the database by typing `rails db:create`

4. Lastly, migrate the databse, `rails db:migrate`


## Other Functionalities:

1. Rich Text Area form for Description

2. Mobile Responsive 

## My Blockers:

1. unit test using rspec because there is a confirmation email used in devise

2. system test using rspec because of foreign keys

## ERD:

![ERD](https://scontent-xsp1-3.xx.fbcdn.net/v/t1.15752-9/260886917_540443567397215_2435191783320079728_n.png?_nc_cat=109&ccb=1-5&_nc_sid=ae9488&_nc_eui2=AeFpPMH3Yy5BYI2yLT1QBb7lXcMMzzIKMG1dwwzPMgowbZ7dv7SbjKC34hALBF273pN7it9J8yKvq91jiXNY4DBA&_nc_ohc=EL1Vd8uBEjAAX-rWitr&_nc_ht=scontent-xsp1-3.xx&oh=03_AVKiuCciGxs91PpK5tuvfQR8-6SsUXFyyJG7Jutfjy8iPA&oe=62339D6A)

* ### **Sample Webapp Screenshot**

1. PC/Laptop

![Sample](https://scontent.xx.fbcdn.net/v/t1.15752-9/p403x403/264000907_350551513553449_2770325762944251269_n.png?_nc_cat=107&ccb=1-5&_nc_sid=aee45a&_nc_eui2=AeEe8EA7UDpgDrmSAg6KDF8AJRH_7Z3XB6AlEf_tndcHoCWN8e_kP4i6JilsamoC_n30sj7TLFEX904PcJyeg_9D&_nc_ohc=_0RBxhX2o2YAX8mowQo&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVJ9_trbbsSkbkRFRVJPVF-_vNcnYzkbJwpWtn9CkeO4aQ&oe=62309527)

2. Mobile

![Sample](https://scontent.xx.fbcdn.net/v/t1.15752-9/p320x320/273719104_1127938314659253_7309965073964268013_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=aee45a&_nc_eui2=AeHkW-tSxGg3iVz6R8FYYlJHmct77gVdHPCZy3vuBV0c8NrKZyWjzFVFxYAwXFfHgevjLVzwF3X6T-VPIcx8VJbC&_nc_ohc=DSMRsxWP9qEAX_jFdH9&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVJ1BYurmXaYlOT3SVJmPoiUFWosRB5LN9H91Oovv-iYQQ&oe=6232B2ED)
