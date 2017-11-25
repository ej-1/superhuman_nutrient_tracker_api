Rails 5 API documentation
http://guides.rubyonrails.org/api_app.html


RESTful Web APIs chapter 9 - The Design Procedure

- 1. choose a mediatype e.g. Collection+JSON 
  p.168 If you’re thinking of using JSON at this point, I must remind you that JSON is not a
  hypermedia format. The JSON standard defines concepts like numbers, lists, strings,
  and objects. It does not define the concepts of links or link relations, so it has no hypermedia
  capabilities.
- 2. Write a profile that covers everything else. (avoid writing a fiat standard with human readable API documentation. Try to follow something that already exists.)

1. List all the pieces of informations you want the API users to be able to get. These will become semantic descriptors and will likely form hierarchies.

2. Draw a state diagram.
Keep track of whether each state transition is safe, unsafe but idempotent,
or unsafe and nonidempotent.
Some semantic descriptors might make more sense to be linked to from another descriptor. E.g eaten_foods does not contain all the attributes vitamin A, vitamin B, vitamin C etc, but links to food_type that contain those values.
Make a plan with with your semantic descriptors and link relations.
Eaten_foods should link to 


3. Try to reconcile your magic strings with strings from existing profiles. I list some
places to look in “The Semantic Zoo” on page 230.

4. Choose mediatype that fits your needs.

5. Write a profile that documents your application semantics

6. Write the code for the API

7. Choose the domain name. E.g. api.superhuman-nutrient-tracker.com
Can add documention and tutorials for humans.


Build APIs you don't hate by Phil Sturgeon
- make a list of all the actions the API should have. 



----------------

Design decisions:
Resource definitions should by convention be placed in a directory under app named resources, app/resources
http://jsonapi-resources.com/v0.9/guide/resources.html

Associations:
Possible
A user has many eaten_foods, but each eaten_food has one food_type.
Food_types has many users through eaten food.
Decided NOT to use this because it does not model things from a human understandable view.
Food_types has many users through eaten food, doesn't really make sense. It is sufficient to just have eaten_food has one food_type. Borrowed this quote from another section "For example, it makes more sense to say that a supplier owns an account than that an account owns a supplier."
2.4 The has_many :through Association

`eaten_food.food_type`
Is needed. Each eaten_food must know how much nutrients etc. It has in the food_type.
So `has_one :food_type` on EatenFood model is necessary.

`eaten_food.user`
Might be necessary to quickly see which user a eaten_food belonds to.
`belongs_to :user` is necessary on User model.

`food_type.eaten_foods`
This is not really needed to be called.
A posssible scenario would be to show a user how much of each eaten_food they have eaten.
Example "you have eaten 2.5 kg of blueberries the last two months.", but this is not helpful information.

`user.eaten_foods`
It is of course necessary to see what a user has eaten.
`has_many: eaten_foods` is needed on user model.

`user.food_types`
Is not really necessary. It's not relevant information to a user what the user has eaten.
Example user A has eaten blueberries.
Would have been done with a many-to-many relationship with EatenFood as a third model in between.

`food_type.users`
Is not really necessary. It's not relevant information to know which users has eaten a certain food_type. Example user A, B and C have eaten blueberries.

`food_type.eaten_foods`
Is not really necessary. It's not relevant information to know if a food_type has been eaten.
Would have been done with a many-to-many relationship with a third model in between.

To cache data:
In order to not needed to calculate and keep in-memory data about what a person has eaten each day, it is probably best to create another table called DailyProfile.

`user.daily_profiles`
Needed to if the app is going to display and summary of e.g. a weeks consumtion. I will not create a weekly_profile, just do a in-memory calculation for that.
Example:

`daily_profile.eaten_foods`
Needed to display what foods and how much a user has eaten.
Example:

November 1st, 2017
100 grams of blueberry
100 grams of Unboiled spaghetti
100 grams of Fried chicken

November 1st, 2017 (daily_profile.eaten_at => 'November 1st, 2017')
100 grams of blueberry (eaten_food.amount => 10, eaten_food.metric => 'grams', eaten_food.name => 'Blueberry') Note: I chose to save name of the food_type on eaten_food. Because to show just amount and name it would be unnecessary to query the food_type for the name. If a person would be interested in the nutrient amounts he/she has consumed through eating that food_type, then another request could be sent, but it is only necessary when the user wants it.
100 grams of Unboiled spaghetti
100 grams of Fried chicken

daily_profiles:
Now new amounts of nutrients are added to the DailyProfile for each eaten_food eaten that day, which saves re-calulating those values. Percentage calulcation of RDI (recommended daily intake) is still needed.

Things that impact the RDI a person has is gender and age. Gender we assume the user can fill in correctly. Age is in a interval that sets RDI usually, e.g. between 20-30 years, 40-50 years etc. Age should be calculated by birth_date that user inputs.
Percentage of RDI consumed for a day does not need to be so flexible. It should be enough to save it in the DailyProfile. If a user later changes their age for some reason, then the previous DailyProfiles should not use memory on the server to re-calculate percentages on previous DailyProfiles. The effect should only affect the current day and future DailyProfiles created.

A alternative would be to do the calculations in on the clientside with React. Not sure how much tht could affect loading time though. The current solution with saving the dat in DailyProfile and doing the calculation only once every time a eaten_food is added is most minimal.

Metric:
I kept metric as a unique field on each eaten_food, because it can be unique for each eaten_food. Not just something standardized like .lbs or kg or grams, but also more custom measurements meals, scoops etc.
So having e.g. a number in the :amount field and recalculate it based on setting on the user account setting where the use chooses a metric is not really possible.

Learning by doing:
Should I put in foreign keys as fields in migration or should I use associations?

TODOS:
- add validations in models
- make sure to use association correctly in resources. should I have eaten_food_id as foreign e.g.
- perhaps remove API from being showns as JSON response.
- ensure values in fields that cannot be nil. e.g. user must have email.
- use contracts.
- don't use resources in routes, do it manually.
- maybe use , dependent: :destroy for eaten_foods
TOMORROW:
- read http://jsonapi-resources.com/v0.9/guide/resources.html
- figure out what filter :users does?
- write tests with rspec.

- read offficial rails 5 api documentation
- watch and read more tutorials on rails 5 API https://www.youtube.com/watch?v=M9-em3FYMNU&list=PLjQo0sojbbxWXYhditpqZlN4oLJE4hLjP
  - authentication, middleware et.c

- recap what I've read in the two books so far.
- implement the cookbook stuff.

- add reactJS layer.
- strip away everything unnecessary.


Learning resources used:

Quick tutorial on using jsonapi-resources gem with Rails 5.
https://www.youtube.com/watch?v=P8gGJBIiLGI

Official documentation for jsonapi-resources gem.
http://jsonapi-resources.com/v0.9/guide/

