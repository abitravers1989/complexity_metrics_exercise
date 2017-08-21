class Story

  def start_story
    puts "Once upon a time there was a good horse."
    puts "Do you like this horse?"
  end

  def gets_yes?
    gets.downcase.start_with? "y"
  end

  def what_to_do
    if gets_yes?
      more_tell
      bla_method
    else
      puts "It got sad"
      puts "Forever :("
    end
  end

   def more_tell
     puts "Do you like it a lot?"
   end

  def bla_method
    if gets_yes?
      puts "It lived happily ever after"
    else
      puts "It lived an okay life"
    end
  end

end
#
# story = Story.new
# story.start_story.what_to_do
