# Setup 

Fork and clone project. Once application initializes, run `rails db:reset db:migrate` to drop any potential databases and run the seed file.

# Expectations

- Items should be able to be linked to a menu
- The join table between Items and Menus should allow unique pricing for each item, this can be extended to include future properties moving forward
- Restaurants should be able to have multiple menus
- Items cannot be duplicated
- After running seed file, terminal should print out created items and their details


<img width="702" alt="Screen Shot 2022-04-02 at 3 36 27 PM" src="https://user-images.githubusercontent.com/32042070/161398534-ac8ccc52-5aaa-42b2-b943-be550bf175ff.png">
