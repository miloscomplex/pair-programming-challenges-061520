# Build a Sandwich

Work with  your partner in `sandwich.rb` to build the deliverables. To get started, have everyone `clone` the pair programming challenges repository. Navigate with `cd` into `01-ruby-objects-build-a-sandwich` and open it with `code .` or `atom .` depending on your IDE. You can run the main file with the command `ruby sandwich.rb`.

Important: This challenge doesn't have tests so you'll need to manually test your work using `pry`.

### Deliverables:

- A sandwich has a `name`. The sandwich cannot be renamed, so do you need a setter, a getter, or both?
- A sandwich has a `price` which can change.
- A sandwich has `ingredients` which is an array of ingredients that make up the sandwich.
- A sandwich has a `bread` type.
- A sandwich has an `#order` method which tells us the sandwich's attributes: `"You ordered the Grilled Cheese which has cheddar cheese and monterey jack on sourdough. That will be $3.99 please!"`. Hint: The `#` denotes that this is an instance method that will be called similar to `sandwich_1.order`.
- A sandwich has the `isVegetarian?` attribute which is either `true` or `false`. This can be changed.
- A sandwich has the `isVegan?` attribute which is either `true` or `false`. This can be changed. If the sandwich becomes vegan, it's also considered vegetarian. How can you change the setter method to make it so setting `isVegan?` to true also sets `isVegetarian?` to true?
- A sandwich has a `ratings` attribute which is an array of different ratings between `1` to `5`.
- A sandwich has an `#add_rating` method that takes in user input and adds that rating to the `ratings` array. A rating can only be between `1` and `5`.
- BONUS: A sandwich has an `#average_rating` method which returns the average of that sandwich's `ratings`. Hint: Look up documentation on the `inject` or `reduce` methods.

- To reiterate, you'll need these attributes: `name`, `price`, `ingredients`, `bread`, `isVegetarian?`, `isVegan?`, `ratings`
- To reiterate, you'll need to build these methods in addition to any getters/readers and setters/writers you'll need: `#order`, `#add_rating`, `#average_rating`
- If a deliverable is vague, use your common sense to interpret it. There's often no wrong solution!

## Recommended workflow:

- Take turns being the driver. I'd recommend switching every fifteen or twenty minutes.
- If anyone has a question, look it up together. Researching is a skill, try and use google more often than your notes.
- If you find documentation that's hard to read, go through it together.
- If you get an error, try and explain what the error message is saying. What type of error is it? What method and line number is causing the error? What do you hypothesize is going wrong?
- One of the first rules of debugging is to check your assumptions. If something isn't working, test your variables to make sure they're coming through the way you think they are!
