# ruby 21-classes-oop.rb

# <== PART 1 - CLASS & OBJECT BASICS
# This is a Class
class Book
    attr_accessor :title, :author, :pages

    def initialize(title, author, pages)
        @title = title
        @author = author
        # BAD way to take class attributes (On Ruby at least)
        self.pages = pages

        puts("First time!")
    end

    def get_info()
        puts("\nClass type: " + self.class.name)
        puts("ID: " + self.object_id.to_s)
        puts(@title + ", " + @pages.to_s + ", " + @author)
    end
end

# This is an Object (Instance of 'Book')
book1 = Book.new("Harry Potter", "JK Rowling", 400)
# BAD Way to Pass Parameters
#book1.author = "JK Rowling"
#book1.pages = 400
#book1.title = "Harry Potter"

book2 = Book.new("Lord Of The Rings", "Tolkein", 500)

book1.get_info()
book2.get_info()

# <== PART 2 - OBJ. METHODS ==>

class Student
    attr_accessor :name, :major, :gpa
    def initialize(name, major, gpa)
        @name = name
        @major = major
        @gpa = gpa
    end

    # Check if the current student have a gpa higher or equal to 3.5
    def hasHonors()
        if @gpa >= 3.5
            puts(@name + " has honors")
            return true
        else
            puts(@name + " hasn't honors")
            return false
        end
    end
end

student1 = Student.new("Jim", "Business", 2.6)
student2 = Student.new("Pam", "Art", 3.6)

student1.hasHonors()
student2.hasHonors()