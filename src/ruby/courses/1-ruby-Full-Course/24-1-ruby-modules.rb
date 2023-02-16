# ruby 24-1-ruby-modules.rb
module Tools
    def sayHi(name)
        puts("Hello Gor- #{name}")
    end

    def sayBye(name)
        puts("See ya! #{name}")
    end
end

include Tools
#Tools.sayHi("Plínio")
#Tools.sayBye("Plínio")