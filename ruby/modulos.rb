module TextAnalyzer
	def initialize(body)
		 @body = body
	end
	def num_words
		# n = @body.count " "
		# puts n +=1
		puts @body.split.size
	end
	def num_chars
		# puts @body.length
		puts @body.chars.size
	end
end

class Article
	include TextAnalyzer
end

class Comment
	include TextAnalyzer
end


a1 = Article.new("Este es el cuerpo del artículo")
a1.num_words #=> 6
a1.num_chars #=> 30

c1 = Comment.new("Este es un comentario")
c1.num_words #=> 4
c1.num_chars #=> 21


# .split.size - @body.split.size
# .chars.size - @body.chars.size

# Mejor Solución
class Article
  attr_reader :body
  include TextAnalyzer

  def initialize(body)
    @body = body
  end
end

class Comment
  attr_reader :body
  include TextAnalyzer

  def initialize(body)
    @body = body
  end
end




# module System
# 	class Record
# 	end
# end

# module Sales
# 	class Record
# 	end
# end

# system_record = System::Record.new
# sales_record = Sales::Record.new

#https://blog.makeitreal.camp/modulos-en-ruby/