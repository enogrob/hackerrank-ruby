# Challenges in Hackerrank

# Ruby Tutorial - Hello HackerRank!
def hello_hackerrank
  "Hello HackerRank!"
end

# Ruby Tutorial - Everything is an Object
def everything_is_an_object
  self
end

# Ruby Tutorial - Object Methods
def object_methods number
  number.even?
end

# Ruby Tutorial - Object Method Parameters
def object_method_parameters a, b, c
  a.between?(b, c)
end

# Ruby Control Structures - Each
# Ruby Control Structures - Unless
def scoring(array)
    # iterate through each of the element in array using *each* and call update_score on itI
    array.each do |user|
        unless user.is_admin?
          user.update_score
        end
    end
end
