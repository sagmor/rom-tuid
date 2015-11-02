require "rom"
require "tuid"
require "rom/tuid/version"
require "rom/tuid/command/generate_tuid"

ROM.plugins do
  register :generate_tuid, ROM::TUID::Command::GenerateTUID, type: :command
end

