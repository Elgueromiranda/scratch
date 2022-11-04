#Write Methods from Scratch

We are going to take a moment to go back and implement(build) the methods you already know and love.  It’s common to write standard methods from scratch in interviews so it’s a helpful skill to develop.

###Release 0
We’re going to think about each of these methods. Both are included in Ruby as standard methods and by rebuilding them we will explore the magic behind the curtain.

Methods
- rewrite `.shuffle` as `.my_shuffle`
- rewrite `.capitalize!` as `.my_capitalize!`
- rewrite `.map` as `.my_map`

You will need to research what each of these methods do normally, as well as how the object can then be called in the method. If you have trouble try [this link]( http://ruby-doc.org/docs/keywords/1.9/Object.html#method-i-self).

###my_shuffle
- `.my_shuffle` can only be called on an array

###my_capitalize!
- `my_capitalize!` can only be called on a string.
-	A bang at the end of a method name is standard naming convention for a destructive method, which means it must permanently change the object it’s called on. You are not allowed to use `gsub` to accomplish this, you must find another way.
	- Check if the object is the same object with the `.object_id` method

###my_map
- `.my_map` can only be called on an array
- `.map` is an enumerable method, all enumberable methods ultimately contain the `.each` method with in them. I have turned off all enumerable methods in the rspec for the sake of this challenge. You can not use an enumerable to create `.my_map`.
- I have also written a `my_each` method for you to use in `my_map`, this is an example for you to reference as well when writing an enumerable method, you are not allowed to use other enumerables to accomplish your task.

###Release 1
Psuedocode each method independently.

###Release 2
Write an initial solution for each method

###Release 3
Refactor each solution (You don't need to copy and paste)

###Stretch
Find another method to write out as a "my" method.


