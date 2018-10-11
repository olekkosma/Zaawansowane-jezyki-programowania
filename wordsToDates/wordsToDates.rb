File.open("slowa.txt", "r") do |f|
    f.each_line do |line|
        text = line.to_s
        if text.length == 6
            for i in 25..36
                value = text.to_i(i)
                value_s = value.to_s
                 if( value > 20000000 && value < 21000000)
                     year = value_s[0,4]
                     month = value_s[4,2]
                     days = value_s[6,2]
                    month_i = month.to_i
                    days_i = days.to_i
                    if(month_i < 13 && days_i < 32)
                        sleep(0.1)
                        puts  "#{year}-#{month}-#{days} -> #{i} -> #{text}"
                    end
                end
            end
        end
    end
  end
  puts "that's all"
  gets