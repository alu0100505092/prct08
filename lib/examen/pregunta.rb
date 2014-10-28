module Examen

    class EleccionSimple
    
         attr_accessor :text, :right, :distractors
         
         
         def initialize(args)
             @text=args[:text]
             raise ArgumentError, 'Specify :text' unless @text
             @right=args[:right]
             raise ArgumentError, 'Specify :right' unless @right
             @distractors=args[:distractors]
             raise ArgumentError, 'Specify :distractors' unless @distractors
         
             
         end
         
         
         def pregunta
    
    
         end
    end
    
end