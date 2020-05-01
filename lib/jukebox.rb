songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts " - help : displays this help message"
  puts " - list : displays a list of songs you can play"
  puts " - play : lets you choose a song to play"
  puts " - exit : exits this program"
end


def play songs
  puts "Please enter a song name or number:"

  input = gets.chomp
  input_valid = false

  if input.to_i > 0 && input.to_i < songs.length
    play_song songs[input.to_i - 1]
  elsif songs.include? input
    play_song songs[songs.index input]
  else
    puts "Invalid input, please try again"
  end
end

def play_song song
  puts "Playing #{song}"
end

def list songs
  songs.each_with_index do |title, i| 
    puts "#{i+1}. #{title}"
  end

end

def exit_jukebox
  puts "Goodbye"
end


def welcome
  puts "Please enter a command:"
end

def run songs
  welcome

  input = gets.chomp
  input_valid = false
  
  while !input_valid
    case input
    when "play"
      play songs
      input_valid = true
    when "exit"
      exit_jukebox
      input_valid = true
    when "list"
      list songs
      input_valid = true
    when "help"
      help
      input_valid = true
    else
      puts "Invalid input"
    end
  end
end

