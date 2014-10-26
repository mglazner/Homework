good_stories=Proc.new do |show|
  puts "I really like #{show}!" 
end

never_die=Proc.new do |show|
  puts "What do we want? Another season of #{show}! \nWhen do we want it? NOW!!"
end

good_stories.call 'Firefly'
never_die.call 'Firefly'

good_stories.call 'Sherlock'
never_die.call 'Sherlock'

def my_demands 
  
end