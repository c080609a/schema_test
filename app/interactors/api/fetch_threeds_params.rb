# frozen_string_literal: true

# Api::FetchThreedsParams.call

module Api
  class FetchThreedsParams < ::BaseInteractor
    expects do
      required(:user).filled
    end

    on_breach do |breaches|
      puts '1'*100
    end

    before do

    end

    def call

    end
  end
end