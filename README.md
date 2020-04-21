# README

Backend API with 4 Endpoints:

**1. Weather for a city with background image included:**

get /api/vi/forecast?location=\<location\>

example:

/api/v1/forecast?location=denver,co

**2. Register for api key**

post /api/v1/users

must include email, password, and password_confirmation params

example:

parameters = {  
  email: "whatever@example.com",  
  password: "password",  
  password_confirmation: "password"  
}. 
post '/api/v1/users', :params => parameters
    
**3. login to retrieve api key if already registered**

get /api/v1/sessions

must include correct email and password params

example:

parameters = {  
  email: "whatever@example.com",  
  password: "password",  
}. 

get '/api/v1/sessions', :params => parameters  


 **4. Time to destination and travel at location**

note: must pass an api_key param to access, so register must be completed first

post '/api/v1/road_trip

example:

parameters = {  
  origin: "Denver,CO",  
  destination: "Pueblo,CO",  
  api_key: "jgn983hy48thw9begh98h4539h4"  
}  

post '/api/v1/road_trip', :params => parameters

