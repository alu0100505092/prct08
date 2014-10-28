require 'spec_helper'
require 'examen'

module Examen
   class EleccionSimple
       describe Examen::EleccionSimple do
           
           before :each do 
               @q=Examen::EleccionSimple.new({:text => '3+3=', :right => '6' , :distractors => [1,2,3]})
           end
           
           context "cuando se crea una pregunta " do
              
           
                it "debe tener tres componentes " do
                    expect(@q.text)=='3+3='
                    expect(@q.right)==6
                    expect(@q.distractors)==[1,2,3]
                end
                
                it "tiene que tener texto y las demas opciones "  do
                    expect{(Examen::EleccionSimple.new(:text =>'5*8=?'))}.to raise_error(ArgumentError)
                end
                    
                     context "cuando se convierte " do
                        it " posible convertir en HTML" do
                            expect(@q).to respond_to :to_html
                        end
                     end
                    
                    
           end
       end
               
              
       
       
        
   end
 
end