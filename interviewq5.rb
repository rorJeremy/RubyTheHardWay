# Using a server-side language (bonus points for Ruby)

# Write a class/method that performs basic validation on an input string (think password).
# Validations must include at least the following:
# - At least 8 characters
# - At least 1 capital letter
# - At least 1 number

# The following explains the regex I made.
# ^ # the start of the string
# $ # the end of the string
# (?=.*[1-9]) # use positive look ahead to see if at least one number exists
# (?=.*[A-Z]) # use positive look ahead to see if at least one upper case letter exists
# .{8,} # consume the entire string, and must be at least 8 characters long

class ValidateStuff
  def self.validate_password(password)
    pw_regex = /^(?=.*[1-9])(?=.*[A-Z]).{8,}$/
    match_or_not = pw_regex.match(password)

    # If the password passed through the regex, the match should return the full password back.
    if match_or_not.to_s == password
      puts "Your password meets the criteria"
    elsif match_or_not == nil
      puts "Your password does not meet the criteria"
    else
      puts "Idk how you got here, but try again.."
    end
  end
end

my_pw = "Papapap1"
ValidateStuff.validate_password(my_pw)

