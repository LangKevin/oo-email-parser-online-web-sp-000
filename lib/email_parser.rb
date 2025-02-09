# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  @@emails = []
  attr_accessor :email
  def initialize(emails)
    @email = emails
    # @@emails << emails
    @@emails = @email.split /[," "]/
    @@emails.delete("")

  end
  def parse
    @@emails.uniq
  end
end
