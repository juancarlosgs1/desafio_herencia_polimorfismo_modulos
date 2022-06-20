# class Persona
#     def initialize(first, last, age, type)
#         @first_name = first
#         @last_name = last
#         @age = age
#         @type = type
#     end

#     def birthday 
#         @age += 1
#     end

#     def talk
#         if @type == "Student"
#             puts "Aquí es la clase de programación con Ruby?" 
#         elsif @type == "Teacher"
#             puts "Bienvenidos a la clase de programación con Ruby!" 
#         elsif @type == "Parent"
#             puts "Aquí es la reunión de apoderados?" 
#         end
#     end
#     def introduce
#         if @type == "Student"
#             puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}." 
#         elsif @type == "Teacher"
#             puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}." 
#         elsif @type == "Parent"
#             puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name}
#             #{@last_name}."
#         end 
#     end
# end


#resolucion

class Persona
    attr_reader :first, :last
    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    def birthday
        @age += 1
    end
end



class Student < Persona

    def talk
     puts "Aquí es la clase de programación con Ruby?" 
    end

    def introduce
     puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}"
    end

end

class Teacher < Persona
    def talk
        puts "Bienvenidos a la clase de programación con Ruby!" 
    end
    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}." 
    end
end

class Parent < Persona
    def talk
        puts "Aquí es la reunión de apoderados?" 
    end
    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end
end

# s = Student.new('Juan', 'Gutierrez',36,'titulado')
# s.talk
# s.introduce
# t = Teacher.new('Jon', 'Connor',40,'Profe')
# t.talk
# t.introduce
# a = Parent.new('Sara', 'Connor',40,'Madre')
# a.talk
# a.introduce