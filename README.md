# Koho Senior Backend Code Challenge

We'd like you to finish building the Rails application with a few key components to demonstrate proficiency in many common Ruby and Rails patterns, which you'll find yourself using day-to-day here.

Though each engineer does specialize in either front-end or back-end, we still sometimes have full-stack responsibilities. So we'd also like you to implement some basic functionality in the given Vue app.

*We expect this exercise to take 2-4 hours at the most.* If you ran out of time, please comment on what remains to be done in the README.

Since this is a backend-focused challenge, we are not looking for styling or CSS, but will notice if any improvements are made. Also, don't concern yourself with configuring everything perfectly. This is just an exercise, so if you don't need to tweak something in order to meet the criteria below, leave it at the defaults.

At Koho, we work with money in most world currencies across our data model. For reporting purposes, we need to be able to work with all money amounts in a common currency of US dollars, in addition to the original currency it was stored with. For example, it should be easy to get a sum of all amounts in USD.

Although we'll leave it to you to otherwise decide which gems to bring in, we do recommend `money-rails`. For this exercise, you'll need to add some currency conversion data. Assume `USD -> EUR is 0.84663`, and `EUR -> USD is 1.18115`. Don’t worry about any other currencies.

# Back-end Portion

Please utilize the Rails app which stores and looks up rates from shipping service providers. The app should have these properties:

#### Provider Model
* A model to represent a shipping service provider. It should have these attributes:
  * Name of company
  * A flat shipping rate as a monetary value with currency

#### Rates Model
* A model to represent shipping rates that each provider has (different from the provider's flat rate). It should have these attributes:
  * Rate as monetary value with currency (per kilo)
  * Origin, as two-letter country code
  * Destination, as two-letter country code
  * Relationship to the shipping provider

#### Requirements
* Create a way to load the attached data into the data store. Via console is fine.
* Make sure all the converted monetary USD amounts are stored.
* Implement a reusable way to ensure that whenever a configurable money column is assigned the original value is stored along with a conversion to a 'default' currency (i.e. USD). It should be easy to include this functionality into any other model that works with currency. Bring this functionality into both the shipping rate model and the shipping service provider model. This is an example of how it should behave:

  ```ruby
  some_model = SomeModel.new

  some_model.amount = 15.0
  some_model.currency = "EUR"
  some_model.save!

  some_model.amount # => 15.00 EUR
  some_model.common_amount # => 17.72 USD

  some_model.amount = 30.0
  some_model.currency = "EUR"
  some_model.save!

  some_model.amount # => 30.0 EUR
  some_model.common_amount # => 35.43 USD
  ```
* Write any Rspec's you deem necessary.
# Front-end Portion/UI

The repo has Vue already installed with Webpacker.

#### Requirements
* Fetch the data from the Rails app on page load.
* Update the simple index view with a list of: provider's name, origin, destination, formatted rate as a monetary value, formatted common rate in USD.
* Create a simple bare-bones form that allows editing and updating a rate. Allow changing all attributes except the common USD rate.


To run the app:
```
yarn
bundle
rails s
```

# README
* Update the README.MD with how to run your app and how to load your data.
* Any details or decisions you want us to know about.
* In a short paragraph: if you had more time, how would you improve your implementation and what would you do differently?

We encourage you to demonstrate your workflow via Git commits with good messages.

When you are done, please zip up your repo and email it to koho.engineering@expeditors.com. If you need to clarify anything regarding this challenge, feel free to email us as koho.engineering@expeditors.com.
