score = 80
result = case score
            when 0..40 then "Fail"
            when 41..60 then "Pass"
            when 61..80 then "Pass with Merit"
            else "Invalid Score"
         end

puts result
