
# Rails Environment Configuration.

---
git:
  user.name:  Megan Glazner
  user.email: ladyglazner@gmail.com
  version:    git version 1.8.1.msysgit.1

ruby:
  bin:        C:/RailsInstaller/Ruby1.9.3/bin/ruby.exe
  version:    ruby 1.9.3p392 (2013-02-22) [i386-mingw32]

rails:
  bin:        C:/RailsInstaller/Ruby1.9.3/bin/rails.bat
  version:    Rails 3.2.13

ssh:
  public_key_location: C:\Users\owner/.ssh/id_rsa.pub
  public_key_contents: ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEArH1hJioDfeh9bgMsASgo1
+1k3yXbJq5qGc/75Ac3cz7Z2oqRBlFszd8VmNh/pidO+VWu/d9Ib6wYa2EMp0sEegxGvJ7w9itH0Zbxu
+z+vieNOBTndXTvfGfueToUrHkMKFrDl0IoBWVSyD6MSUoAre96EgDZDPiJdKITuNB8HBPXtGHHa8buz
hKrcGVeKJzK5JDCYYGWmWERoESBswCoEbffqBQ1W625RwfYEUc4kq+KT6UQe8Fn3GhVqxgdUQl0xWUvV
fIPpLySIQXvKlECs2kVUJ431FsnsuXxLH28k0u2mEu+yQ7XYerOC+oIrG7yCS8GvvP08qbzNBFThsNfX
Q== Megan Glazner <ladyglazner@gmail.com>




C:\Homework>dir
 Volume in drive C has no label.
 Volume Serial Number is B448-44D6

 Directory of C:\Homework

10/27/2013  08:03 PM    <DIR>          .
10/27/2013  08:03 PM    <DIR>          ..
06/18/2013  08:33 PM               505 .gitattributes
06/18/2013  08:33 PM             2,858 .gitignore
10/27/2013  05:11 PM             3,420 HW2 10-27-13.txt
10/24/2013  07:36 PM               976 jason.rb
10/24/2013  07:26 PM               727 matrix.rb
10/24/2013  07:28 PM             4,898 transcript_10-24.rb
               6 File(s)         13,384 bytes
               2 Dir(s)  657,408,929,792 bytes free

C:\Homework>notepad jason.rb

C:\Homework>notepad "HW2 10-27-13.txt"

C:\Homework>irb
irb(main):001:0> +a = [
irb(main):002:1* +  [2,5,7,8,10],
irb(main):003:1* +  [9,1,4,0,9],
irb(main):004:1* +  [10,1,3,4,9],
irb(main):005:1* +  [0,2,-1,4,19],
irb(main):006:1* +  [1,2,3,4,5]
irb(main):007:1> +]
SyntaxError: (irb):7: syntax error, unexpected tUPLUS, expecting ']'
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):008:0> a = [[2,5,7,8,10], [9,1,4,0,9], [10,1,3,4,9], [1,2,3,4,5]]
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5]]
irb(main):009:0>
irb(main):009:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5]]
irb(main):010:0> a.dup
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5]]
irb(main):011:0> b = a.dup
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5]]
irb(main):012:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5]]
irb(main):013:0> b
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5]]
irb(main):014:0> b.clear
=> []
irb(main):015:0> b
=> []
irb(main):016:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5]]
irb(main):017:0> a << [0,2,-1,4,19]
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):018:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):019:0> a.each do |item|
irb(main):020:1* puts item
irb(main):021:1> puts "========"
irb(main):022:1> end
2
5
7
8
10
========
9
1
4
0
9
========
10
1
3
4
9
========
1
2
3
4
5
========
0
2
-1
4
19
========
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):023:0> puts [1,2,3]
1
2
3
=> nil
irb(main):024:0> a.each do |item|
irb(main):025:1* puts item.class
irb(main):026:1> end
Array
Array
Array
Array
Array
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):027:0> puts [1,2,3]
1
2
3
=> nil
irb(main):028:0> p [1,2,3]
[1, 2, 3]
=> [1, 2, 3]
irb(main):029:0> a.each do |item|
irb(main):030:1* p item.sort
irb(main):031:1> puts "======"
irb(main):032:1> end
[2, 5, 7, 8, 10]
======
[0, 1, 4, 9, 9]
======
[1, 3, 4, 9, 10]
======
[1, 2, 3, 4, 5]
======
[-1, 0, 2, 4, 19]
======
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):033:0> a.sort
=> [[0, 2, -1, 4, 19], [1, 2, 3, 4, 5], [2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10,
1, 3, 4, 9]]
irb(main):034:0> [[1,2,3], ["boo"]].sort
ArgumentError: comparison of Array with Array failed
        from (irb):34:in `sort'
        from (irb):34
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):035:0> [[1,2,3], [1]].sort
=> [[1], [1, 2, 3]]
irb(main):036:0> [[2,2,3], [1]].sort
=> [[1], [2, 2, 3]]
irb(main):037:0> [[1,2,3], [1, "asdf"]].sort
ArgumentError: comparison of Array with Array failed
        from (irb):37:in `sort'
        from (irb):37
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):038:0> [[1,2,3], [2, "asdf"]].sort
=> [[1, 2, 3], [2, "asdf"]]
irb(main):039:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):040:0> b = a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):041:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):042:0> b << "boo"
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19], "boo"]
irb(main):043:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19], "boo"]
irb(main):044:0> a.remove 5
NoMethodError: undefined method `remove' for #<Array:0x6407b8>
        from (irb):44
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):045:0> a.delete 5
=> nil
irb(main):046:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19], "boo"]
irb(main):047:0> a.pop
=> "boo"
irb(main):048:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):049:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):050:0> result = []
=> []
irb(main):051:0> a.each do |item|
irb(main):052:1* item.sort
irb(main):053:1> results << item.sort
irb(main):054:1> p results
irb(main):055:1> end
NameError: undefined local variable or method `results' for main:Object
        from (irb):53:in `block in irb_binding'
        from (irb):51:in `each'
        from (irb):51
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):056:0> a.each do |item|
irb(main):057:1* result << item.sort
irb(main):058:1> p result
irb(main):059:1> end
[[2, 5, 7, 8, 10]]
[[2, 5, 7, 8, 10], [0, 1, 4, 9, 9]]
[[2, 5, 7, 8, 10], [0, 1, 4, 9, 9], [1, 3, 4, 9, 10]]
[[2, 5, 7, 8, 10], [0, 1, 4, 9, 9], [1, 3, 4, 9, 10], [1, 2, 3, 4, 5]]
[[2, 5, 7, 8, 10], [0, 1, 4, 9, 9], [1, 3, 4, 9, 10], [1, 2, 3, 4, 5], [-1, 0, 2
, 4, 19]]
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):060:0> p result
[[2, 5, 7, 8, 10], [0, 1, 4, 9, 9], [1, 3, 4, 9, 10], [1, 2, 3, 4, 5], [-1, 0, 2
, 4, 19]]
=> [[2, 5, 7, 8, 10], [0, 1, 4, 9, 9], [1, 3, 4, 9, 10], [1, 2, 3, 4, 5], [-1, 0
, 2, 4, 19]]
irb(main):061:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):062:0> a
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):063:0> a.each do |item|
irb(main):064:1* sorted = item.sort
irb(main):065:1> end
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):066:0> sorted
NameError: undefined local variable or method `sorted' for main:Object
        from (irb):66
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):067:0> result = a.map do |item
irb(main):068:1> |
irb(main):069:1* item.sort
irb(main):070:1> end
SyntaxError: (irb):67: syntax error, unexpected '\n', expecting '|'
(irb):70: syntax error, unexpected keyword_end, expecting $end
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):071:0> result = a.map do |item|
irb(main):072:1* item.sort
irb(main):073:1> end
=> [[2, 5, 7, 8, 10], [0, 1, 4, 9, 9], [1, 3, 4, 9, 10], [1, 2, 3, 4, 5], [-1, 0
, 2, 4, 19]]
irb(main):074:0>
irb(main):075:0* end
SyntaxError: (irb):75: syntax error, unexpected keyword_end
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):076:0> end
SyntaxError: (irb):76: syntax error, unexpected keyword_end
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):077:0> end
SyntaxError: (irb):77: syntax error, unexpected keyword_end
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):078:0> result=[]
=> []
irb(main):079:0> a.each do |i|
irb(main):080:1* i.each
irb(main):081:1>
irb(main):082:1* end
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):083:0> end
SyntaxError: (irb):83: syntax error, unexpected keyword_end
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):084:0> a.each do |i|
irb(main):085:1* i.each do |x|
irb(main):086:2* result << x
irb(main):087:2> end
irb(main):088:1> end
=> [[2, 5, 7, 8, 10], [9, 1, 4, 0, 9], [10, 1, 3, 4, 9], [1, 2, 3, 4, 5], [0, 2,
 -1, 4, 19]]
irb(main):089:0> result
=> [2, 5, 7, 8, 10, 9, 1, 4, 0, 9, 10, 1, 3, 4, 9, 1, 2, 3, 4, 5, 0, 2, -1, 4, 1
9]
irb(main):090:0> ["a", "b", "c"].each_with_index do |item, index|
irb(main):091:1* puts item
irb(main):092:1> puts index
irb(main):093:1> puts "===="
irb(main):094:1> end
a
0
====
b
1
====
c
2
====
=> ["a", "b", "c"]
irb(main):095:0> "Strings"
=> "Strings"
irb(main):096:0> 'Strings'
=> "Strings"
irb(main):097:0> "Jason's"
=> "Jason's"
irb(main):098:0> '"Double Quote"'
=> "\"Double Quote\""
irb(main):099:0> "Jason\nClark"
=> "Jason\nClark"
irb(main):100:0> puts "Jason\nClark"
Jason
Clark
=> nil
irb(main):101:0> puts "Jason\tClark"
Jason   Clark
=> nil
irb(main):102:0> 123.to_s
=> "123"
irb(main):103:0> [1,2,3].to_s
=> "[1, 2, 3]"
irb(main):104:0> first_name = "Megan"
=> "Megan"
irb(main):105:0> last_name = "Glazner"
=> "Glazner"
irb(main):106:0> first_name + last_name
=> "MeganGlazner"
irb(main):107:0> first_name + " " + last_name
=> "Megan Glazner"
irb(main):108:0> "#{first_name} #{last_name}"
=> "Megan Glazner"
irb(main):109:0> first_name * 2
=> "MeganMegan"
irb(main):110:0> puts "=" * 30
==============================
=> nil
irb(main):111:0> "Megan".gsub("M", "m")
=> "megan"
irb(main):112:0> "Megan".gsub("Me", "mE")
=> "mEgan"
irb(main):113:0> first_name.gsub("Me", "mE")
=> "mEgan"
irb(main):114:0> first_name
=> "Megan"
irb(main):115:0> first_name.gsub!("Me", "mE")
=> "mEgan"
irb(main):116:0> first_name
=> "mEgan"
irb(main):117:0> "Jason Clark".gsub("a", "A")
=> "JAson ClArk"
irb(main):118:0> "Jason Clark".sub("a", "A")
=> "JAson Clark"
irb(main):119:0> "Jason" << " Clark"
=> "Jason Clark"
irb(main):120:0> first_name << " Glazner"
=> "mEgan Glazner"
irb(main):121:0> first_name
=> "mEgan Glazner"
irb(main):122:0> first_name = "Megan"
=> "Megan"
irb(main):123:0> first_name.upcase
=> "MEGAN"
irb(main):124:0> first_name.downcase
=> "megan"
irb(main):125:0> first_name
=> "Megan"
irb(main):126:0> first_name.upcase!
=> "MEGAN"
irb(main):127:0> first_name
=> "MEGAN"
irb(main):128:0> first_name
=> "MEGAN"
irb(main):129:0> first_name = "Megan"
=> "Megan"
irb(main):130:0> "".methods - Object.methods
=> [:casecmp, :+, :*, :%, :[], :[]=, :insert, :length, :size, :bytesize, :empty?
, :match, :succ, :succ!, :next, :next!, :upto, :index, :rindex, :replace, :clear
, :chr, :getbyte, :setbyte, :byteslice, :to_i, :to_f, :to_str, :dump, :upcase, :
downcase, :capitalize, :swapcase, :upcase!, :downcase!, :capitalize!, :swapcase!
, :hex, :oct, :split, :lines, :bytes, :chars, :codepoints, :reverse, :reverse!,
:concat, :<<, :prepend, :crypt, :intern, :to_sym, :ord, :start_with?, :end_with?
, :scan, :ljust, :rjust, :center, :sub, :gsub, :chop, :chomp, :strip, :lstrip, :
rstrip, :sub!, :gsub!, :chop!, :chomp!, :strip!, :lstrip!, :rstrip!, :tr, :tr_s,
 :delete, :squeeze, :count, :tr!, :tr_s!, :delete!, :squeeze!, :each_line, :each
_byte, :each_char, :each_codepoint, :sum, :slice, :slice!, :partition, :rpartiti
on, :encoding, :force_encoding, :valid_encoding?, :ascii_only?, :unpack, :encode
, :encode!, :to_r, :to_c, :between?]
irb(main):131:0> "1/2".to_r
=> (1/2)
irb(main):132:0> "1/2".to_c
=> ((1/2)+0i)
irb(main):133:0> "Jason Clark".split
=> ["Jason", "Clark"]
irb(main):134:0> "Jason_Clark".split(
irb(main):135:1* "_")
=> ["Jason", "Clark"]
irb(main):136:0> "Jason".map {|a| a}
NoMethodError: undefined method `map' for "Jason":String
        from (irb):136
        from C:/RailsInstaller/Ruby1.9.3/bin/irb:12:in `<main>'
irb(main):137:0> "Jason\nRobert\nClark".each_line do |line|
irb(main):138:1* p line
irb(main):139:1> p "=" *30
irb(main):140:1> end
"Jason\n"
"=============================="
"Robert\n"
"=============================="
"Clark"
"=============================="
=> "Jason\nRobert\nClark"
irb(main):141:0>