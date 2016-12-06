require File.expand_path '../spec_helper.rb', __FILE__

describe 'FizzBuzzApp' do
  context 'should allow accessing the home page' do
    context 'witout params' do
      before do
        get '/'
      end

      it 'has success status' do
        expect(last_response).to be_ok
      end

      it 'renders page correctly' do
        expect(last_response).to match(/FizzBuzz Game/)
      end

      it 'renders calculations' do
        expect(last_response).to match(/<th scope="row">100</)
      end
    end

    context 'with params' do
      before do
        get '/', number: 101
      end

      it 'has success status' do
        expect(last_response).to be_ok
      end

      it 'renders page correctly' do
        expect(last_response).to match(/FizzBuzz Game/)
      end

      it 'renders calculations' do
        expect(last_response).to match(/<th scope="row">101</)
      end
    end
  end
end