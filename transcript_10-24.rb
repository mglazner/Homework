sort!
sort_by!
collect
collect!
map
map!
select
select!
keep_if
values_at
delete
delete_at
delete_if
reject
reject!
zip
transpose
replace
clear
fill
slice
slice!
assoc
rassoc
+
*
-
&
|
uniq
uniq!
compact
compact!
flatten
flatten!
count
shuffle!
shuffle
sample
cycle
permutation
combination
repeated_permutation
repeated_combination
product
take
take_while
drop
drop_while
pack
entries
sort_by
grep
find
detect
find_all
flat_map
collect_concat
inject
reduce
partition
group_by
all?
any?
one?
none?
min
max
minmax
min_by
max_by
minmax_by
member?
each_with_index
each_entry
each_slice
each_cons
each_with_object
chunk
slice_before
=> nil
irb(main):063:0> a
=> [1, 2, 3, 4, 5, 6]
irb(main):064:0> a - [3,6]
=> [1, 2, 4, 5]
irb(main):065:0> a
=> [1, 2, 3, 4, 5, 6]
irb(main):066:0> a - [3,6]
=> [1, 2, 4, 5]
irb(main):067:0> a.empty?
=> false
irb(main):068:0> [].empty?
=> true
irb(main):069:0> a.sort
=> [1, 2, 3, 4, 5, 6]
irb(main):070:0> [1,1,1,1].uniq
=> [1]
irb(main):071:0> [[1,2,3], [4,5,6]].flatten
=> [1, 2, 3, 4, 5, 6]
irb(main):072:0> [[1,2,3], [4,[5],6]].flatten
=> [1, 2, 3, 4, 5, 6]
irb(main):073:0> [[1,2,3], [4,[5],6]].flatten(1)
=> [1, 2, 3, 4, [5], 6]
irb(main):074:0> [1,2,3,4,nil,5,6].compact
=> [1, 2, 3, 4, 5, 6]
irb(main):075:0> a.max_by do |a,b|
irb(main):076:1* end\
irb(main):077:0*
=> 1
irb(main):078:0> a.max_by do |i|
irb(main):079:1* i.even?
irb(main):080:1> end
ArgumentError: comparison of TrueClass with false failed
        from (irb):78:in `each'
        from (irb):78:in `max_by'
        from (irb):78
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):081:0> j = ["1", "22", "111"]
=> ["1", "22", "111"]
irb(main):082:0> j.max_by do |s|
irb(main):083:1*   s.length
irb(main):084:1> end
=> "111"
irb(main):085:0> j.reverse!
=> ["111", "22", "1"]
irb(main):086:0> j
=> ["111", "22", "1"]
irb(main):087:0> j.sort_by do |s|
irb(main):088:1*   s.length
irb(main):089:1> end
=> ["1", "22", "111"]
irb(main):090:0> a.sort_by do |i|
irb(main):091:1* i.length
irb(main):092:1> end
NoMethodError: undefined method `length' for 1:Fixnum
        from (irb):91:in `block in irb_binding'
        from (irb):90:in `each'
        from (irb):90:in `sort_by'
        from (irb):90
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):093:0> a.sort_by do |i|
irb(main):094:1* i.to_s.length
irb(main):095:1> end
=> [1, 2, 3, 4, 5, 6]
irb(main):096:0> a << 7
=> [1, 2, 3, 4, 5, 6, 7]
irb(main):097:0> a
=> [1, 2, 3, 4, 5, 6, 7]
irb(main):098:0> a << "a string"
=> [1, 2, 3, 4, 5, 6, 7, "a string"]
irb(main):099:0> a.pop
=> "a string"
irb(main):100:0> a
=> [1, 2, 3, 4, 5, 6, 7]
irb(main):101:0> a.push(8)
=> [1, 2, 3, 4, 5, 6, 7, 8]
irb(main):102:0> a
=> [1, 2, 3, 4, 5, 6, 7, 8]
irb(main):103:0> a.shift
=> 1
irb(main):104:0> a
=> [2, 3, 4, 5, 6, 7, 8]
irb(main):105:0> a.unshift(1)
=> [1, 2, 3, 4, 5, 6, 7, 8]
irb(main):106:0> a
=> [1, 2, 3, 4, 5, 6, 7, 8]
irb(main):107:0> puts a.methods - Object.methods
to_a
to_ary
[]
[]=
at
fetch
first
last
concat
<<
push
pop
shift
unshift
insert
each
each_index
reverse_each
length
size
empty?
find_index
index
rindex
join
reverse
reverse!
rotate
rotate!
sort
sort!
sort_by!
collect
collect!
map
map!
select
select!
keep_if
values_at
delete
delete_at
delete_if
reject
reject!
zip
transpose
replace
clear
fill
slice
slice!
assoc
rassoc
+
*
-
&
|
uniq
uniq!
compact
compact!
flatten
flatten!
count
shuffle!
shuffle
sample
cycle
permutation
combination
repeated_permutation
repeated_combination
product
take
take_while
drop
drop_while
pack
entries
sort_by
grep
find
detect
find_all
flat_map
collect_concat
inject
reduce
partition
group_by
all?
any?
one?
none?
min
max
minmax
min_by
max_by
minmax_by
member?
each_with_index
each_entry
each_slice
each_cons
each_with_object
chunk
slice_before
=> nil
irb(main):108:0> a.insert
ArgumentError: wrong number of arguments (at least 1)
        from (irb):108:in `insert'
        from (irb):108
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):109:0> a.insert 42
=> [1, 2, 3, 4, 5, 6, 7, 8]
irb(main):110:0> a.insert 4
=> [1, 2, 3, 4, 5, 6, 7, 8]
irb(main):111:0> a.insert 4, 2
=> [1, 2, 3, 4, 2, 5, 6, 7, 8]
irb(main):112:0> a
=> [1, 2, 3, 4, 2, 5, 6, 7, 8]
irb(main):113:0> a.all? do |i|
irb(main):114:1*   i.even?
irb(main):115:1> end
=> false
irb(main):116:0> a.any? do |i|
irb(main):117:1*   i.even?
irb(main):118:1> end
=> true
irb(main):119:0>

irb(main):001:0> a = [[1,2,3], [4,5,6]]
=> [[1, 2, 3], [4, 5, 6]]
irb(main):002:0> a[0]
=> [1, 2, 3]
irb(main):003:0> a[0][0]
=> 1
irb(main):004:0> a[0][1]
=> 2
irb(main):005:0>