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
         
         
         def to_html
            #  options =@distractors+[@right]
            #  options = options.shuffle
             
            # options=''
            # options.each do |options|
            # options += %Q{<input type = "radio" value="#{options}" name=0> #{options}\n}}
            # html = %Q{{#{@text}}<br/>{#{options}}}
    
    
         end
    end
    
end