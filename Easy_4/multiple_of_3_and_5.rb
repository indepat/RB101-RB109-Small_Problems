#Write a method that searches for all multiples of 3 or 5 
#that lie between 1 and some other number, 
#and then computes the sum of those multiples. 
#For instance, if the supplied number is 20, 
#the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).
#You may assume that the number passed in is an integer greater than 1.

def multisum(number)

  array_three = multisum_three(number)
  array_five = multisum_five(number)


end



def multisum_three(number)

array_multisum_three = [1]
addition_number = 0

  while addition_number < number

    array_multisum_three << addition_number += 3  
    
  end


  if array_multisum_three.last > number
    array_multisum_three.pop
    array_multisum_three
  end

  array_multisum_three
end


def multisum_five(number)

array_multisum_five = [1]
addition_number = 0

  while addition_number < number

    array_multisum_five << addition_number += 5  
    
  end


  if array_multisum_five.last > number
    array_multisum_five.pop
    array_multisum_five
  end

  array_multisum_five
end

multisum(15)



  array_five = multisum_five(number)
    array_three.concat(array_five)