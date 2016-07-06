require("rspec")
require("tamagotchi.rb")
require("pry")

describe(Tamagotchi) do
  describe("#initialize") do
    it("sets the name and life levels of a new Tamagotchi") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.name()).to(eq("lil dragon"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.activity_level()).to(eq(10))
    end
  end

  describe("#is_alive") do
    it("is alive if the food level is above 0") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_alive()).to(eq(true))
    end

    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(0)
      expect(my_pet.is_alive()).to(eq(false))
    end
  end

  describe("#time_passes") do
    it("decreases the amount of food the Tamagotchi has left by 1") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.time_passes()  #decide what trigger you will use to make time pass
      expect(my_pet.food_level()).to(eq(9))
      expect(my_pet.sleep_level()).to(eq(9))
      expect(my_pet.activity_level()).to(eq(9))
    end
  end

  describe ("#is_sleepy") do
    it("is not sleepy if level of sleep > 3") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_sleepy()).to(eq(false))
    end

    it("is sleepy if level of sleep < 3") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_sleep_level(2)
      expect(my_pet.is_sleepy()).to(eq(true))
    end
  end

  describe ("#is_hungry") do
    it("is not hungry if level of food > 3") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_hungry()).to(eq(false))
    end

    it("is hungry if level of food < 3") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_food_level(2)
      expect(my_pet.is_hungry()).to(eq(true))
    end
  end


  describe ("#is_bored") do
    it("is not bored if level of activity > 3") do
      my_pet = Tamagotchi.new("lil dragon")
      expect(my_pet.is_bored()).to(eq(false))
    end

    it("is bored if level of activity < 3") do
      my_pet = Tamagotchi.new("lil dragon")
      my_pet.set_activity_level(2)
      expect(my_pet.is_bored()).to(eq(true))
    end
  end
end
