require 'spec_helper'
require 'examen'

module Examen
   class EleccionSimple
       describe Examen::EleccionSimple do
           
           before :all do 
             # @preg=Examen::EleccionSimple.new({ text: '¿Pregunta?', right:'Respuesta', distractors:[1,2,3] })
             
             #@p1=Struct::Pregunta.new("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots", "nil", ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
            objeto=EleccionSimple.new(0)
            
            Struct.new("Pregunta", :enunciado , :respuesta, :falsas)
            @p1=Struct::Pregunta.new("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots", "nil", ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
            objeto.empu(@p1)
            cosa=objeto.saca(0)
            
           end
           
           context "Eleccion Simple" do
              
           
                it "Debe existir una pregunta " do
                    expect(@cosa).to eq("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots")
                    expect(@objeto.to_a[0].to_a[0])=="nil"
                    expect(@objeto.to_a[0].to_a[0])==['#<Xyz:0xa000208>',0,'Ninguna de las anteriores']
                end
                
                it "Debe existir un metodo para obtener la pregunta "  do
                #   expect(@p1.pregunta).to eq("PREGUNTA : ¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots")
                end
                
                it "Deben existir opciones de respuesta " do
                    # expect(@p1.to_a[1]) != nil
                    # expect(@p1.to_a[2]) !=[nil] 
                    
                end
                    
                it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
                end
                
                it "Se deben mostrar por la consola la pregunta y las opciones de respuesta" do
                end
                
                
          it "Prueba de preguntas" do
              
              
          end
          
                    
                
           end
           
           
       end
       
       
       
       
       describe Examen do
                before :all do
                    @lista = Lista.new(0)
                    @n1 = Nodo.new("Nodo 1")
                    @n2 = Nodo.new("Nodo 2")
                end
                
                it 'Se deben insertar nodos en la lista.' do
                    @lista.push(@n1)
                    expect(@lista.inicio).to eq(@n1)
                end
                
                it 'Se insertan varios elementos.' do
                    @lista.push(@n1)
                    @lista.push(@n2)
                    expect(@lista.inicio).to eq(@n2)
                    @lista.ext
                    expect(@lista.inicio).to eq(@n1)
                end
                
                it 'Se extrae el primer elemento de la lista.' do
                    @lista.push(@n1)
                    @lista.push(@n2)
                    @lista.ext
                    expect(@lista.inicio).to eq(@n1)
    end
    
end
               
              
       
       
        
   end
 
end