=begin
PROBLEM
input: string, a correct program for a stack-and-register language
output: n/a

DATA STRUCTURE
store stack as array
store register as local variable, initialized to 0

ALGO
initialize stack as empty array
initialize register to 0
parse program into array of instructions
for each instruction in array
  if instruction is 'PRINT'
    print value of register
  if instruction is 'PUSH'
    push value of register onto stack
  etc.
  (rely on else to catch integer instructions e.g. '5')
=end

def minilang(program)
  stack = []
  register = 0
  instructions = program.split
  instructions.each do |inst|
    case inst
    when 'PUSH' then stack << register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    else register = inst.to_i # e.g. '5'
    end
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')