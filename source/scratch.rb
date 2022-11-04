#Write methods from scratch

#Release 1: PSUEDOCODE

#find a way to pick a random number

#find a way to remove that number 

#find a way swtich the position of the last number
#with the position of the new number

numbers = [1, 2, 5, 6, 8]

#A- .my_shuffle




#B- .my_capitalize!

# create my own class that receives a string and that then manipulates a string and returns a capitalized word

string = "elias"
stringTest = "j"

class String


  def my_capitalize!
    
      if(self.length == 1)
        return
        self.chars.first.upcase
      else 



     self.replace(self.chars.first.upcase   + self.chars.drop(1).join)

      end

  end
    
  
end


#C- .my_map

numbers = [1, 2, 5, 6, 9]

class Array
     

  def my_map
    output = []
    if(block_given?)
    for x in self
      output << yield(x)
    end

    return output
  else return to_enum(:my_map)
    end


    end
  

  def my_each

     for x in self
      yield(x)
     end
    
  end

   def my_shuffle
    shuffledArray = []
    input = self
    total = self.length
    c = 0
    until(total == c)


    random = rand(0...input.length)
 
    shuffledArray << input[random]

    input.delete_at(random)

    c += 1


end
  return shuffledArray
    end

end


test_array = []
p numbers.my_each{|element| test_array << element + 2}
p test_array.each

p numbers.each
p test_array
p numbers.my_map{|x| x * 10}
p numbers.map














=begin






Array class that takes in an array as input 

executes a block of arithmatic and returns an array







=end







#Release 2 & 3:SOLUTIONS & REFACTOR






