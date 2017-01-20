## Project Overview
1. Authentication system with Devise.
2. Users can track up to 10 stocks per user. Profile page will display current stock prices.
3. Users can search for stock symbols using a search bar.
4. Users can choose to add a stock from results to their profile.
5. Users an look for friends in the app by name or email.
6. Users can view portfolio of stocks from friends.
7. Must be mobile friendly (Bootstrap 4 helps this easily).

## Restrictions
1. Fast development; Styling not important, but must be presentable
2. No test framework required since this is prototyping.
3. Focus on core functionality, time, and presentation

## Dependencies
1. Bootstrap 4 - Styles
3. PostgreSQL - DB for Heroku deployment
4. Devise - User Authentication

## TODO
1. Devise for authentication, with styling.
2. Stock tracker gem.
3. Users controller, model, and views.


<%= form_for "SearchVariable", html: { class: "form-inline my-2 my-lg-0" } do |f| %>
  <%= f.text_field :search, class: "form-control mr-sm-2", placeholder: "Search" %>
  <%= button_to("Search", {}, { class: "btn btn-outline-info my-2 my-sm-0" }) %>
<% end %>
