class EagerComponent < ActionView::Component::Base
  def initialize(*)
  end

  def self.compile
    puts "=> EagerComponent is compiling..."
    super
    puts "=> EagerComponent compiled successfully" if @compiled
  end
end
