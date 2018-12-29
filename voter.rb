
# First Name, Last Name, Age, Income, Household Size, Gender, Education

data = [
  ["Jon", "Smith", 25, 50000, 1, "Male", "College"],
  ["Jane", "Davies", 30, 60000, 3, "Female", "High School"],
  ["Sam", "Farelly", 32, 80000, 2, "Unspecified", "College"],
  ["Joan", "Favreau", 35, 65000, 4, "Female", "College"],
  ["Sam", "McNulty", 38, 63000, 3, "Male", "College"],
  ["Mark", "Minahan", 48, 78000, 5, "Male", "High School"],
  ["Susan", "Umani", 45, 75000, 2, "Female", "College"],
  ["Bill", "Perault", 24, 45000, 1, "Male", "Did Not Complete High School"],
  ["Doug", "Stamper", 45, 75000, 1, "Male", "College"],
  ["Francis", "Underwood", 52, 100000, 2, "Male", "College"]
]

# Average age
sum = 0
data.each {|elem| sum += elem[2]}
puts "Avarage age: #{sum/data.size.to_f}"

# Average income
sum = 0
data.each {|elem| sum += elem[3]}
puts "Avarage income: #{sum/data.size.to_f}"

# Average household size
sum = 0
data.each {|elem| sum += elem[4]}
puts "Avarage household size: #{sum/data.size.to_f}"

# Female Percentage
female = 0
data.each {|elem| female += 1 if elem[5].downcase == "female"}
puts "Female: #{female/data.size.to_f * 100}%"

# Male Percentage
male = 0
data.each {|elem| male += 1 if elem[5].downcase == "male"}
puts "Male: #{male/data.size.to_f * 100}%"

# Unspecified Gender Percentage
na = 0
data.each {|elem| na += 1 if elem[5].downcase == "unspecified"}
puts "Unspecified: #{na/data.size.to_f * 100}%"

# Percent of those who obtained a college education level
college = 0
data.each {|elem| college += 1 if elem[6].downcase == "college"}
puts "College: #{college/data.size.to_f * 100}%"
# Percent of those who obtained a high school education level
high_school = 0
data.each {|elem| high_school += 1 if elem[6].downcase == "high school"}
puts "High School percentage: #{high_school/data.size.to_f * 100}%"

# Percent of those that did not finish high school
high_school = 0
data.each {|elem| high_school += 1 if elem[6].downcase == "did not complete high school"}
puts "Did Not Complete High School: #{high_school/data.size.to_f * 100}%"
