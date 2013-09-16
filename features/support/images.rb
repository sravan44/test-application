module ImageHelpers
  def image_path
    File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "fixtures", "apple.jpg"))
      # NOTE: I created a sub dir of "support" called "fixtures" in which to place test files.
    end
end
 
World(ImageHelpers)