require_relative 'student'
require_relative 'instructor'


chris = Instructor.new("Chris")
christina = Student.new("Christina")


chris.teach
christina.teach
chris.learn
# 2 wont work because there is no method in their class
# that matches the command.
