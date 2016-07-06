
class Tamagotchi
  define_method (:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @activity_level = 10
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method (:is_alive) do
    @food_level > 0
  end

  define_method(:is_sleepy) do
    @sleep_level <= 3
  end

  define_method(:is_bored) do
    @activity_level <= 3
  end

  define_method(:is_hungry) do
    @food_level <= 3
  end

  define_method (:set_food_level) do |level|
    @food_level = level
  end

  define_method (:set_sleep_level) do |level|
    @sleep_level = level
  end

  define_method (:set_activity_level) do |level|
    @activity_level = level
  end

  define_method(:time_passes) do
    sleep 3  #900 #15 minutes
    @food_level -= 1
    @sleep_level -= 1
    @activity_level -= 1
  end

  define_method(:feed) do
    @food_level += 1
  end

  define_method(:put_to_sleep) do
    while @sleep_level < 10
      sleep 60
      @sleep_level +=1
    end
  end

  define_method(:play) do
    @activity_level +=1
  end

end
