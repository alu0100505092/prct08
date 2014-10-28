require 'spec_helper'
require 'examen'

module Examen
   class EleccionSimple
       describe Examen::EleccionSimple do
           
           before :each do 
             # @preg=Examen::EleccionSimple.new({ text: '¿Pregunta?', right:'Respuesta', distractors:[1,2,3] })
              Struct.new("Pregunta", :enunciado , :respuesta, :falsas)
              @p1=Struct::Pregunta.new("¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots", "nil", ['#<Xyz:0xa000208>',0,'Ninguna de las anteriores'])
           end
           
           context "Eleccion Simple" do
              
           
                it "Debe existir una pregunta " do
                    expect(@p1.to_a[0])=="¿Cual es la salida del siguiente codigo Ruby? class Xyz def pots @nice end end xyz = Xyz.new p xyz.pots"
                    expect(@p1.to_a[1])=="nil"
                    expect(@p1.to_a[2])==['#<Xyz:0xa000208>',0,'Ninguna de las anteriores']
                end
                
                it "Debe existir un metodo para obtener la pregunta "  do
                   #expect(@preg).to respond_to :pregunta
                end
                
                it "Deben existir opciones de respuesta " do
                    expect(@p1.to_a[1]) != nil
                    expect(@p1.to_a[2]) !=[nil] 
                    
                end
                    
                it "Se debe invocar a un metodo para obtener las opciones de respuesta" do
                end
                
                it "Se deben mostrar por la consola la pregunta y las opciones de respuesta" do
                end
                
          
                    
                
           end
       end
               
              
       
       
        
   end
 
end