require 'pry'
module Examen

    class EleccionSimple #< Struct.new("Pregunta", :enunciado , :respuesta, :falsas) 
        #use a class to define behavior, together with a Struct that defines the data to which the class should be initialized.
        attr_reader :pregunta
        def initialize(arg)
            @pregunta= Array.new(arg)
           
        end
        
         def empu(arg)
             @pregunta.push(arg)
         end
         
         def saca(arg)
             retorna = @pregunta.to_a[arg].to_a[arg]
             return retorna
         end
         
         
         
          def pregunta
              " PREGUNTA : #{@p1}"
          end
    end
    
end