# Xperior Tech Challenge

## The Breif

1 ) Review Data (3 csv's: Customer, Store, Purchases).
  Customers have made purchases of items at particular stores on certain dates
  
2 ) Create an ERD or similar to show the relationships between the different data types (customers, stores, addresses 
  products/items purchases), and how you would relate the models in rails/active model 
  
  - Customers can be uniquely identified by their email address
  
  - Stores can be uniquely identified by their Store Name and Store Location combination.
  
  - (Customers and Stores may have moved their address, or have multiple addresses)
  
3 ) Implement as a simple rails app (models only are fine) showing the relationships you mapped out in your ERD

4 ) Attempt to import the data into your database (using rails) documenting your process: what issues arose and how 
  you overcame them.
  
  - look out for and capture any bad or inconsistant data, and document how you identified the bad data and how you 
  attempted (if possible) to clean the data.
  
  - its up to you what you define as bad data, as long as you can describe your process/criteria.
  
  
Xperior uses many microservice instances to provide interconnected API’s.
  
  
5 ) Create 2 x Restful API microservices in Ruby on Rails

  - This first rails app will use the second for its authentication layer.
  - This will serve up the data from steps 1) - 4)
  - For simplicity all users should be able to CRUD any of the data objects.
  
  - The second rails app will provide an api authentication service.
  - This can be implemented in anyway you like, within the time constraints.
  - Feel free to supply notes to justify your choice of authentication strategy/library.
  
When complete, we should be able to make 1 authentication call to the second rails api and use the result to perform 
calls on the first rails app.

The Service should consider the following
  - Return appropriate JSON response body
  - Take care of HTTP Status codes
  - RSpec testing
  - Versioning
  - It should be Secure
  - Each model needs full CRUD
  
#### When done, please submit:

1) your rails apps. (can be on GitHub/Bitbucket to be shared with Xperior)

2) your ERD/relationship diagram. (if supplying a source file, also submit a pdf/image of the diagram).

3) any bad data you identified, clearly labelled with criteria for rejection.   


## My Solution


### Observations
1) a quick look at the data shows no product master data or address master data (2 things asked for as 
  relationship entities)
  
### Assumptions 
1) I will assume the SKU (in the Purchases file) is for the Product/Price combination.
 
2) I will construct master tables for product and address from the data. With this approach there is not a 100% 
  guarantee the data is valid. So I will assume that a 'best fit' is required rather than tag the entire data set as 
  unreliable and not importable.
  
3) Best fit means that at least 50% of that particular data attribute is the same (all other data is bad) otherwise the 
  whole data set is considered bad
  
### Solution Documentation

I will use github for source control

I will use JWT's as authentication not because it is more secure but because it answers the brief which is to make 1 
call on the authentication server and use the result for calls (plural - meaning multiple) on the app server.

I will avoid polymorphic columns in favour of join files for customers + addresses and stores + addresses

