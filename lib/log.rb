class Log
  attr_accessor :created_at,
                :at,
                :method,
                :path,
                :host,
                :fwd,
                :dyno,
                :connect,
                :service,
                :status,
                :bytes

  def response
    [@connect, @service].map(&:to_i).inject(0, :+)
  end
end
