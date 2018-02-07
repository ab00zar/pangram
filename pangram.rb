class String
  # true if contains all 26 letters of the alphabet (case insensitive)
  def pangram?
    str = "abcdefghijklmnopqrstuvwxyz"
    sentence = self.gsub(" ","").downcase 
    str.split('').each do |char|
      if !sentence.include?(char)
        return false
      end
    end
    true
  end 
end

def assert condition
  puts (condition ? "OK" : "NO")
end

assert("azerty".pangram?)
assert("bcdefghijklmnopqrsTuvwxyza".pangram?)
assert("Google".pangram?)
assert("My name is".pangram?)
assert("two is 2".pangram?)
assert("^%#&".pangram?)
assert("The quick brown fox jumps over the lazy dog.".pangram?)