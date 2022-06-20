require_relative 'modulos'


#Crear la clase Animal con un atributo nombre. Agregar un método getter para el atributo   . (1 Punto)
# Crear las clases Ave, Mamífero e Insecto. Ambas heredan de Animal. (1 Punto)
# Crear las clases Pingüino, Paloma y Pato. Las tres heredan de Ave. (1 Punto)
# Crear las clases Perro, Gato y Vaca. Las tres heredan de Mamífero. (1 Punto)
# Crear las clases Mosca, Mariposa y Abeja. Las tres heredan de Insecto. (1 Punto)
# Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de definir las habilidades y tipo de alimentación de cada animal. (2 Puntos)

class Animal
    attr_reader :nombre
    def initialize(nombre)
        @nombre = nombre
    end
    include Habilidades::Caminante
end

class Ave < Animal
end

class Mamifero < Animal
end

class Insecto
end

class Pinguino < Ave
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Paloma < Ave
    include Habilidades::Volador
    include Alimentacion::Herbivoro
end

class Pato < Ave
    include Habilidades::Volador
    include Habilidades::Nadador
    include Alimentacion::Herbivoro
end

class Perro < Mamifero
    include Alimentacion::Carnivoro
end

class Gato < Mamifero
    include Alimentacion::Carnivoro
end

class Vaca < Mamifero
    include Alimentacion::Herbivoro
end

class Mosca < Insecto
end
class Mariposa < Insecto
end
class Abeja < Insecto
end

pinguino = Pinguino.new('pepe')
pinguino.nadar
pinguino.comer
pe = Perro.new('cliford')
pe.comer