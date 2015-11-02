module ROM
  module TUID
    module Command
      module GenerateTUID
        def execute(tuple)
          super({id: ::TUID.new.to_s}.merge(tuple))
        end
      end
    end
  end
end
