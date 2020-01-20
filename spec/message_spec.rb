require 'message'

describe Message do
  subject(:message) { described_class.new }

  describe '#initialize' do
    it 'should have account SID' do
      expect(message.account_sid).to eq(ENV['ACCOUNT_SID'])
    end
    it 'should have auth token' do
      expect(message.auth_token).to eq(ENV['AUTH_TOKEN'])
    end
    it 'should have from' do
      expect(message.from).to eq(ENV['TWILIO_NUMBER'])
    end
    it 'should have to' do
      expect(message.to).to eq(ENV['MY_NUMBER'])
    end

    describe '#send' do
      it 'should send a confirmation of text being sent' do
        expect(message.send).to eq("Text sent")
      end
    end
  end

end
