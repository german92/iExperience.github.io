## iExperience Course Page

This site, public for now, holds all the slides and coursework for the iExperience curriculum. Find out more about iExperience at [iexperience.co.za](http://iexperience.co.za).

### Making the site work
This site runs on Jekyll. To build on local machine (Ruby required):

    gem install jekyll
    jekyll serve -w

You can then view at `localhost:4000`.  


All exercises may be found in `/exercises` and are written in HTML. The slides are written in Markdown and presented with [reveal.js](http://lab.hakim.se/reveal-js/#/). Creating a new slide is easy: 

- Add an HTML file for slide, named its number (i.e. `6A.html`) in `/slides`. 
- Copy the content of another slide HTML file into it, and make slight adjustments. 
- Put the Markdown code for the slide in `/slides/markdown`, named `6A.slide_topic.md`. 
- Link to that from the HTML file. 
