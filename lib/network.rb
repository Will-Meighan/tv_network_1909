class Network

  attr_reader :name, :shows

  def initialize(name)
    @name = name
    @shows = []
  end

  def add_show(show)
    @shows << show
  end

  def collect_characters
    @shows.collect_concat {|show| show.add_characters}
    # Iterating over the show object to collect all characters
  end

  def highest_paid_actor
    collect_characters.max_by {|character| character.salary}.actor
    # Using the collected characters from show object and iterating over those characters to locate the max salary, then returning the character that corresponds with that salary. Why am I receiving a wrong number of arguments error? Looks like it has something to do with the add_characters method I made in the show class.
  end

end
