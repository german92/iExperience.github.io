## Notes, suggestions, improvements


#### String interpolation

Explain string interpolation better: people have trouble understanding what it is. Perhaps do:

    string1 + " " + string2

Then say...that's kind of annoying, so we can do:

    "#{string1} #{string2}"

It's even more powerful when we have numbers:

    99.to_s + " beers on the wall"
    "#{99.to_s} beers on the wall"
    "#{99} beers on the wall"

    number = 99
    "#{number} beers on the wall"
