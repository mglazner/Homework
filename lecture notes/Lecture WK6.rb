#12-9-13 Lecture

require_relative "babylibrary"

s=gets

def main(s)
  separate_line(s)
  upcase(s)
  replace_spaces(s)
  count_words(s)
  count_punct(s)
  sort(s)
end

main(s)