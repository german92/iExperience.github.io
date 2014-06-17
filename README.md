## iExperience Course Page

This site, public for now, holds all the slides and coursework for the iExperience curriculum. Find out more about iExperience at [iexperience.co.za](http://iexperience.co.za).

### Making the site work
This site runs on Jekyll. To build on local machine (Ruby required):

    gem install jekyll
    gem install bundler # If you don't have it already
    bundle install
    bundle exec jekyll serve -w

You can then view at `localhost:4000`.  


All exercises may be found in `/exercises` and are written in HTML. The slides are written in Markdown and presented with [reveal.js](http://lab.hakim.se/reveal-js/#/). Creating a new slide is easy: 

- Add an HTML file for slide, named its number (i.e. `6A.html`) in `/slides`. 
- Copy the content of another slide HTML file into it, and make slight adjustments. 
- Put the Markdown code for the slide in `/slides/markdown`, named `6A.md`. 
- Link to that from the HTML file. 
- Make sure to update the "prematter": the stuff between the `---`s at the top of the page. 

Creating a new exercise is even easier. Name it according to the day in `/exercises`, copy the contents of `template.html` into it, and add HTML content after updating the prematter. 

### Tests

The `tests` folder is deceptively named because the idea is to hold the test files for any challenges that we do, but for convenience, the source files also live in that folder though they are not technically tests. This is because the tests `require_relative`, and we want our environment to be as close to the same as the students'—and they will have both the files and tests in the same folder. When the answers are not released yet, uncomment the relavent lines in the `.gitignore` file, and `git rm --cached` the files as well to make it disappear from the repo. 

### Images

If you're making slides with images, create a folder in `images/slides`, in the subfolder of the appropriate lecture. Same with exercises, but instead of a folder, follow the naming convention `lectureNumber.filename`, i.e. `1.sublime.png`.  

### Files

Important documents to note:

- `files/notes_for_future` is a running list of improvement suggestions for the next iteration of the course. Put notes and thoughts about what we could change/improve there.
- `files/plans` is a file created by Aaron and Rafi about the plans for the iX site.
- `files/ta_training` is notes by Rafi about good TAing principles. 

### Maintenance

Note that occasionally, you may have to run `bundle update` to update the gems in `Gemfile`.
