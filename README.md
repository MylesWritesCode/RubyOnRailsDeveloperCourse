## Overview
Because of the amount of repos I had to set up for my last course, and having to go through merging them all together, I've decided to put all of the rails apps I'll be building into a single repository rather than making 5 or 6 different ones. It should be fine as long as my .gitignore encompasses all of the rails apps, and I initialize just for deployment in their respective folders.

This course is going to be using Heroku and AWS for storage, as well as Stripe for payments. I feel like I already can do all of these things, but it doesn't hurt to learn more about Ruby (while building things like user authentication from scratch) and Rails as a whole.

## Alpha Blog
I'm setting up the Alpha Blog with Bootstrap 4 and doing a couple other things that I'll be listing here. I'm confident I can do this by myself, but it's good to see if there are other best practices I can learn from this course.

Review: I've learned a lot about the course, though it's a little outdated than the [Upskill](http://upskillcourses.com/) course that I've [taken](https://github.com/MylesWritesCode/upskill_saas_tutorial). It's okay though, since I was able to explore all of the new features in Bootstrap 4, along with jQuery (endless pagination was...fun), different gems, and user authentication without Devise (which is what Upskill uses). I also got to deal extensively with js.erb files (because I needed them for the endless pagination), but for some reason it's still not working in Heroku even though it works great locally. I'm sure it's some arbitrary error on my part, but I feel that I've learned enough from building this blog, so I'm going to move on to the next project. I may update the pagination links at the bottom, or completely revamp the endless scrolling to JS ES6 (the solution looks neato), but for meow, onto the next project.

## Finance Tracker
This whole project was...I guess practice to build prototypes quickly. It had a bunch of really cool features and a new gem (stock-quote), as long as Ajax functionality with the searches. I'm going to say it doesn't look pretty, but everything works as intended per the specs from the class. I think the Alpha Blog looks a lot nicer, though this finance tracker was done relatively fast, so it's not going to be a polished product just yet.

If I had to "level up" this tracker, I'd remove the validation that makes it so each user can only track 10 stocks, clean up the UI (a lot), and maybe add things like graphs, history, and more information on stocks...you know, things that stock traders actually need. Or, I guess it could be kept simple, like a Twitter that shows what stocks high profile traders are buying and selling so that the friend functionality would actually make sense.

## Photo Blog
This one I'm particularly proud of, because I could make it look pretty nice while being completely functional. The hardest part of this project was getting the JS to work in Heroku. Turns out that Bootstrap doesn't play nice with any other JS that you decide to add. Apparently it has something to do with the errors that Bootstrap spits out since it's not loading with Tether. I fixed the problem by removing //= require_tree. and using javascript_include_tag in the views that needed certain JS files.

Some areas where I would improve this app would be to allow for friends to follow each other and have a specialized feed that shows all of your friends image uploads. This seems like a feature that an image uploading website would largely use (think Instagram). Other than that, I would change some of the styling (for example, modals for viewing images, instead of a completely new page). Other than that, I'm extremely happy with this project, and hope you check it out. 
