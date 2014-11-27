#===Class EleccionSimple
#*Metodo initialize

module Examen
        class EleccionSimple < Pregunta
            
            def initialize arg
                    #attr_reader :enuncia2, :verdadero, :falso
                    #super(enunciado,verdadero,falso)
                    super(arg)
            end
            
            
        end    

end