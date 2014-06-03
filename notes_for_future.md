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

#### Day 4 Modulify Exercise

Make it more practical—not `Array.piglatinify`. 

#### Topics to Add Into Curriculum

- Difference between class methods and just free methods. 
  - Class methods teach something you create to do something (teach a fish to swim) vs. free methods building a machine that makes its input swim (a machine that, when given a fish, makes it swim).
- `!` notation for methods
  - `map!`
- How to debug
