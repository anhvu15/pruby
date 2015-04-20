# obj = Object.new
# obj2 = obj
# puts "Object id of obj is #{obj.object_id}"
# puts "Object id of obj2 is #{obj2.object_id}"
# string_1 = "Hello"
# string_2 = "Hello"
# puts "Object id of string 1 : #{string_1.object_id}"
# puts "Object id of strign 2 : #{string_2.object_id}"
#__send__

# talk = Object.new
# if talk.respond_to?("talk")
# 	talk.talk
# else
# 	puts "Object talk does not understand the talk message"
# end

#Method Argument
# obj = Object.new

# def obj.one_arg(x)
# 	puts "Require one and only one argument"
# end
# obj.one_arg(1,2,3)

# take in many arguments

# def many_arguments(a,b,*c)
# 	puts "the method has zero or many arguments"
# 	p c
# end

# many_arguments(1,2,3,4)

#default argument 
def default_argument(a,b,c=1)
	puts "values: #{a } #{b} #{c}"
end

#default_argument(2,3,3)
str = "Hello"
abc = str 
abc.replace("Goodbye")
 # dup and freeze object

def change_string(str)
	str.replace("New string content")
end
s = "Original String"
s.freeze
change_string(s.clone)
puts s





























