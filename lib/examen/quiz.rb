class Question
    attr_reader :enunciado, :options

    def initialize (enunciado, options)
        @enunciado = enunciado
        @options = options
    end
    
    def to_s
        toRet = ""
        toRet << enunciado << "\n"
        n = 1
        toRet << "#{n}.- #{options[:correcta]}\n"
        n+=1
        options[:erroneas].each do |op|
            toRet<<"#{n}.- #{op}\n"
            n+=1
        end
        toRet
    end
    
end



class Quiz
  attr_accessor :titulo, :pregs

  def initialize(titulo, &block)
    self.titulo = titulo
    self.pregs = []

    instance_eval &block 
  end
  
  def to_s
    output = titulo
    output << "\n#{'*' * titulo.size}\n\n"
    pregs.each_with_index do |preg, index|
      output << "#{index + 1}.) #{preg}\n"
    end

    output
  end

  def preg(text, options = {})
    preg = Question.new(text,options)
    pregs << preg
  end
  
  def erroneas (option)
    self.pregs[-1].options[:erroneas] << option
  end
  
end

quiz = Quiz.new("Cuestionario de LPP 05/12/2014") {
    preg 'Cuantos argumentos de tipo bloque puede recibir un metodo?',
        :correcta => '1',
        :erroneas => []
    erroneas '2'
    erroneas 'muchos'
    erroneas 'los que defina el usuario'
        
    preg 'En Ruby los bloque son objetos que continen codigo',
        :correcta=>'Falso',
        :erroneas => []
    erroneas 'Cierto'
    
    
}

# puts quiz.to_s