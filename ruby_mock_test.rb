
load 'ruby_intro_18fall.rb'

def scores
  correct = 0
  wrong = 0
  full = 35

  # Q1
  begin
    unique_array([1,2,3,-4,-5,1,3,2]) == [1,2,3,-4,-5] ? correct+=1 : wrong+=1
    puts " 1 #{wrong}"
  rescue
    puts "1 rescue #{wrong}"
    wrong+=1
  end

  # Q2
  begin
    two_sum?([-1,-2,4,4],2) == true ? correct+=1 : wrong+=1
    puts "2 #{wrong})"
  rescue
    puts "2 rescue #{wrong}"
    wrong+=1
  end

  # Q3
  begin
    group_anagrams(['elbow','cried','below','cider']) == [['elbow','below'],['cried','cider']] ? correct+=1 : wrong+=1
    puts "3 #{wrong})"
  rescue
    puts "3 rescue #{wrong}"
    wrong+=1
  end

  # Q4
  begin
    palindrome?("pop") == true ? correct+=1 : wrong+=1
    puts "4 #{wrong})"
  rescue
    puts "4 rescue #{wrong}"
    wrong+=1
  end

  # Q5
  begin
    remove_and_append_vowels("pray") == 'prya' ? correct+=1 : wrong+=1
    puts "5 #{wrong})"
  rescue
    puts "5 rescue #{wrong}"
    wrong+=1
  end

  # Q6
  begin
    highest_frequency_word("She says she got married.") == 'she' ? correct+=1 : wrong+=1
    puts "6 #{wrong})"
  rescue
    puts "6 rescue #{wrong}"
    wrong+=1
  end

  #Q7
  begin
    b2 = Book.new("The Great Gatsby", 17.99)
    puts "book created successfully"
  rescue
    puts "in book rescue"
    b2 = nil
  end

  begin
    b2.formatted_price=="17 dollars and 99 cents only" ? correct+=1 : wrong+=1
    puts "7 #{wrong}"
  rescue
    puts "formatted price rescue"
    wrong+=1
  end

  puts "printing actual values now"
  # puts correct+wrong
  puts correct, wrong, correct+wrong
  return ( (correct * full).to_f / (wrong + correct) ).round(2)
end

puts scores
