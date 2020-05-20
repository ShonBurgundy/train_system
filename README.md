# Train Site

#### Epicodus: Ruby: Week Three, Two-DAy Project: Trains and cities


#### By Sean VanLeewuen & Ryan Duff 

## Description
This is a site that lists cities and all the trains that serve them. It allows riders to see all the cities that are serviced by the system, all the trains that operate in the system and which trains are available to ride in a given city at a given time. System operators are able to create, update and delete trains as necessary. Operators are also able to create, update and delete the list of cities serviced by the system.


## Setup/Installation Requirements
This project is available as a website hosted on Heroku and is viewable in any web browser at <link>


## Specifications

| Behavior       | Input         | Output  |
| ------------- |:-------------:| -----:|
| Program will display a list of cities and trains in the train system  | Navigates to Heroku hosted website | Cities: Seattle, Portland, San Diego. Trains: A,B,C,D |
| Program will allow user to click on trains to display list of cities it visits | Train: A (click) | Route to cities view page *Displays train destinations* |
| Program will allow user to click on city name to see a list of trains that stop in that city  | City:Portland (click)  | Trains: A, D, |
| Program will allow rider to see a timetable listing what time each train stops in each city | Train: A (click) | Seattle:8:00am, Portland: 12:01pm, San Diego: 11:50pm  |
| Program will allow system operator to create trains | Train A | * Train A  |
| Program will allow system operator to update trains | Train A (update input *Train B*) | Train B  |
| Program will allow system operator to delete trains | Train A (*Delete*) | *Deleted* |

## Technologies Used

* _Markdown_
* _git & gitHub_
* _Ruby_
* _Rspec_
* _Pry_
* _Capybara_
* _PSQL_
* _Postgres_

## Known Bugs



### License

**The MIT license**

Copyright (c) 2020 **Ryan Duff**
