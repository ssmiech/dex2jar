require 'spec_helper'

describe Dex2jar::Command do
  let(:command) {described_class.new('', [])}

  describe "execute" do

    it 'executes with the right params' do
      expect(command).to receive(:dex2jar_command).and_return('dex2jar.sh')
      expect(command).to receive(:`).with('dex2jar.sh  ').and_return("mmr")

      command.execute
    end

    it 'executes dex2jar.bat on windows environment' do
      expect(command).to receive(:windows_environment?).and_return(true)

      expect(command.send(:dex2jar_command)).to include('bin/dex2jar-0.0.9.15/d2j-dex2jar.bat')
    end

    it 'executes dex2jar.sh on unix environment' do
      expect(command).to receive(:windows_environment?).and_return(false)

      expect(command.send(:dex2jar_command)).to include('bin/dex2jar-0.0.9.15/d2j-dex2jar.sh')
    end
  end
end
