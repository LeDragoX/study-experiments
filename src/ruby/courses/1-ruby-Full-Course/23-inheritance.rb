# ruby 23-inheritance.rb

class Chef
    def make_chicken
        puts("The chef makes chicken")
    end
    def make_salad
        puts("The chef makes salad")
    end
    def make_special_dish
        puts("The chef makes BBQ Ribs")
    end
end

# This class learns every method from 'Chef'
class ItalianChef < Chef
    # Method Overriding
    def make_special_dish
        puts("The TALENTED chef makes Eggplant Parm")
    end
    def make_pasta
        puts("The TALENTED chef makes Pasta")
    end
    def make_special_mh
        puts("The TALENTED chef makes Chef's Choice Platter")
    end
end

normalChef = Chef.new()
normalChef.make_special_dish

italian_chef = ItalianChef.new()
italian_chef.make_pasta
italian_chef.make_special_dish
italian_chef.make_special_mh