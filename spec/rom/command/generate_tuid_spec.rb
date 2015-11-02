require "spec_helper"

class Users < ROM::Relation[:memory]
end

class CreateUser < ROM::Commands::Create[:memory]
  relation :users
  register_as :create
  use :generate_tuid
end

describe ROM::TUID::Command::GenerateTUID do
  let(:env) do
    ROM.setup(:memory)

    ROM.register_relation(Users)
    ROM.register_command(CreateUser)


    ROM.finalize.env
  end

  subject(:command) { env.command(:users).create }

  it "sets the :id attribute if missing" do
    object = command.call(name: 'Seba')

    expect(object.first[:id]).to be_instance_of(TUID)
  end

  it "keeps the original :id if provided" do
    object = command.call(id: 'some-id', name: 'Seba')

    expect(object.first[:id]).to eql('some-id')
  end
end
