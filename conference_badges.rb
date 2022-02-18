# Write your code here.
def badge_maker name
    "Hello, my name is #{name}."
end
def batch_badge_creator names
    names.map {|name| badge_maker(name)}
end
def assign_rooms names
    names.map.with_index(1) {|name, i| "Hello, #{name}! You'll be assigned to room #{i}!"}
end
def printer names 
    batch_badge_creator(names).each {|badge| puts badge}
    assign_rooms(names).each {|assignment| puts assignment}
end