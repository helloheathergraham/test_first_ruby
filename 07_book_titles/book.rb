class Book


        def title=(string)
                @title = string
        end

        def title
                 @title.capitalize
        end

        def title
        words = @title.split
        little_words = ["and", "over", "or", "the", "of", "a", "an", "in"]
        words.each do |i|
                        i.capitalize! unless little_words.any? { |x| i == x }
        end
        words[0].capitalize!
        words.join(" ")
        end
end