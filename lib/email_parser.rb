# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails= emails
  end

  def parse
    temp = []
    emails.split(" ").each do |w|
        if(w.include?(","))
          temp << w.gsub(",","")
        else
          temp << w
        end
    end
    unique(temp)
  end

  def unique(array)
    unique = []
    array.each do |w|
      if(!unique.include?(w))
        unique << w
      end
    end
    unique
  end
end
