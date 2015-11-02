module ROM
  module TUID
    module Command
      module GenerateTUID
        def execute(tuple)
          super({id: ::TUID.new}.merge(tuple))
        end
      end
    end
  end
end
