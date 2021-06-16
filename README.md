# README

**Social RecoverWe Social Media App**

*You can watch a video of me presenting this app at https://youtu.be/CJyzOZ6Vyxw?t=6708*

I created Social RecoverWe because we are social beings forced to socially distance, and I wanted to help people re-engaging without distance, when the time is right. 

One of my first steps in this project was to pick my tech stack and to decide what features I needed for a minimum viable product, or MVP. I reviewed the feasibility, scope, and milestones of the project. 

Using spreadsheets, I created my schema. I made tables, with sample data, of my models and their attributes and corresponding data types. I figured out what associations, join tables, and foreign keys I would need. I also made tables to determine which BE and FE RESTful and non-RESTful I would need.

I drew my wireframes on paper and made an entity-relationship diagram with LucidChart.

I stayed organized throught the project with Trello boards. I set milestones and tasks to be accomplished, and noted questions and nice-to-have features.

***After the planning, the programming:***


*Backend*

I created a RESTful API backend with Ruby on Rails and a PostgreSQL database. I generated models with my pre-determined attributes and foreign keys. I made a route, controller method, and view for each route I’d selected in the planning process. 

Next came association methods, validation, and authorization. I bundled any needed gems, encrypted keys as needed, and configured CORS middleware.

I added advanced logic for the jointable. I built out my partial views based on the data I’d decided to extract in my schema and wireframes. Talking through this logic outloud was very helpful.

I added non-RESTful routes for likes and the GIPHY third-party library.

I seeded my database, and tested every route and feature repeatedely, using Active Record queries and Insomnia. At least once a day, I pushed my code to Github.

*Frontend*

See https://github.com/christinaheadley/capstone_vue_app

I used Vue to build the frontend of my multi-page application, because it scales very well. I built methods in JavaScript to receive my backend routes. I created several views and routes with dependent logic. 

Creation of the front-end wasn’t as straightforward as the Rails backend, so getting the front-end to work how I wanted was equal parts frustration and fun.

The home page is a list of posts, and I wanted them to be sortable, searchable, and filterable. Getting all that logic to work together was a highlight of this page, and an example of breaking a large task into smaller parts. With the help of JS libraries, I added buttons and got the sort feature working like I wanted. Then I did the same for the search feature, and then again with filtering by using checkboxes to filter posts by tags.

I used a Bootstrap theme so I could focus on the functionality of my site. I was able to alter the theme to reflect the mission of my site. However, I do enjoy design, so I created a matching logo, and I made many small adjustments to the site to match it to my vision. I enjoyed discovering and incorporating existing Bootstrap CSS, making the app both easier on the eyes and more dynamic.

Adding the theme increased the difficulty of the logic. By playing with conditional logic, I was able to combine my data with the theme’s CSS classes to create a seemless and dynamic status bar for each post, which shows a post’s tags, likes, and number of comments. And you can click the like button or heart icon to see the number of likes changes right in front of your eyes. I learned from an instructor that I needed to increment the value in the JavaScript as well as the backend for this to work.

The home page pulled information from several controller routes and methods, so keeping the logic in working order was a continual process as the page grew. I fixed issues by adding or removing arguments, and asked for help from an instructor, who, in one instance, advised me I needed to remove the “this” keyword. Shocking!

I added the GIPHY API, a nice-to-have feature that I thought would bring a friendly and dynamic aspect to my app. Again, it was a process of building a small thing that worked, and then building it up into larger working parts. I used two endpoints, one static and one dynamic. Once I got them both working on the backend with an encrypted API key, I added the static route to the frontend. I then added a variable to handle the dynamic route, verified it was working, and added a modal with an image grid. The end result gave the user the ability to enter a search term for GIFs, view, select, and add a GIF to their comment, along with optional text and photo. This part of the project was fun and rewarding.

I didn’t add all the features I would like to. But I’m happy with what I focused on and created. If I were to deploy this site for use, I think direct messaging and the Meetup.com API would be great additions.
