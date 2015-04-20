# different between lambda and proc
# lamdba the control return to the calling method itself

def method_call_lamda
	->{"we just returned from lambda"}.call
	"we just returned from method"
end

puts method_call_lamda

def method_call_with_proc
	Proc.new{return "We just returned from proc"}.call
	"we just returned from method"
end

puts method_call_with_proc