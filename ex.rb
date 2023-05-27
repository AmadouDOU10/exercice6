def comments()
    puts "Entrez la note de 1 à 5"
    point = gets.to_i
    while true
        if point <= 0 || point > 5
            puts "Entrez une note de 1 à 5"
            point = gets.to_i
        else
            puts" Merci de saisir un commentaire "
            comment = gets 
            post = "point:#{point} comment:#{comment}"
            File.open("data.txt", "a") do |file|
                file.puts(post)
            end
            break
        end           
    end
end  
def comment_reading()
      puts "Les résulats"
      File.open("data.txt", "r") do |file|
        file.each_line do |line|
          puts line
        end
      end
end      
while true
      num = gets.to_i
      case num
    when 1
        comments()
    when 2
        comment_reading()
    when 3
      puts "Fini"
      break
    else
      puts "Entrez de 1 à 3 "
    end
end