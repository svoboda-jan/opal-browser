module Browser; module DOM; class Event

class PopState < Event
  def self.supported?
    not $$[:PopStateEvent].nil?
  end

  class Definition < Definition
    def state=(value)
      `#@native.state = #{value}`
    end
  end

  def self.create(name, &block)
    new(`new PopStateEvent(#{name}, #{Definition.new(&block)})`)
  end

  alias_native :state
end

end; end; end
