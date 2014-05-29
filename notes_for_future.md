## Notes, suggestions, improvements


#### String interpolation

Not a huge issue, and probably low priority. A few people have trouble understanding what it is; I see some

    word = "string" 
    puts "#{word}"

Perhaps quickly do:
    string1 + " " + string2

Then say...that's kind of annoying, so we can do:

    "#{string1} #{string2}"

It's even more powerful when we have numbers:

    99.to_s + " beers on the wall"
    "#{99.to_s} beers on the wall"
    "#{99} beers on the wall"

    number = 99
    "#{number} beers on the wall"

#### Blocks

In

    items.each do |item|
      ...
    end

students keep asking, what is that `|item|` thing? Why do I need it? How do I use it? Rafi has not found a very compelling analogy—he just keep reiterating that "you need some way to access each item each time through the loop".

#### Accessing hashes

In the API exercise and in 4A/4B project, the concept of double access like `response['data']['title']` or `items["milk"][:quantity]` doesn't seem to be clear—people don't have a mental model of what the bigger hash (`response` or `items`) is and what those square brackets are doing. Explaining that the `[]` is like a "look inside" operator (look inside Array, or Hash) helped a bit.

#### Day 4 Project

Wayyy to complicated—the people I spoke to hard a hard time getting their heads around what `cart.items` looks like. Simplification is necessary. 
