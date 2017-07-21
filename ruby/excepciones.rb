class Person
  def initialize(name)
    @name = name
    raise ArgumentError.new if @name.nil? || @name.to_s.empty?
  end
  
  def name= value
    raise ArgumentError.new if value.nil? || value.to_s.empty?
    @name=value
  end
end


# Otra forma
class Person
  attr_reader :name

  def initialize(name)
    self.name = name
  end

  # nuestro propio método de escritura para name
  def name=(name)
    if name.nil? || name.empty?
      raise ArgumentError, "El nombre no puede ser vacío"
    end

    @name = name
  end
end



# class Person
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#     raise ArgumentError.new("Not valid name") if @name.nil? || @name.to_s.empty?
#   end
# end

# class Person
#   attr_accessor :name
  
#   def initialize(name)
#     @name = name
#     # raise ArgumentError, 'Error en el nombre' unless @name.nil? || @name.to_s.empty?
#     # raise ArgumentError, 'Error en el nombre' if @name == nil || @name.to_s == ""

#     if @name == nil || @name.to_s == ""
#     	raise ArgumentError, 'Error en el nombre'
#     end



#   end
# end

# Person.new("Pedro") # no lanza excepción
# Person.new(nil) # lanza ArgumentError
# Person.new("") # lanza ArgumentError

# p = Person.new("Juan")
# p.name = "Pedro" # no lanza excepción
# p.name = nil # lanza ArgumentError
# p.name = "" # lanza ArgumentError


# # https://books.google.com.co/books?id=ows9jTsyaaEC&pg=PA33&lpg=PA33&dq=ruby+raise(ArgumentError)&source=bl&ots=inSDzVuhCj&sig=bjuHgOIqMUr4ghzYazyO2r9l8IM&hl=es&sa=X&redir_esc=y#v=onepage&q=ruby%20raise(ArgumentError)&f=false