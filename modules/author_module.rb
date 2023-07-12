module AuthorModule
  def list_author
    if @authors.empty?
      puts "No author found"
    else
      puts "List of Authors"
    end
    @authors.each do |author|
      print "\nAuthor First Name:", author.first_name, ", "
      print "Author Last Name:", author.last_name
    end
  end
end
