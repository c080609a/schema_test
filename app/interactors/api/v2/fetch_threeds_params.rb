# frozen_string_literal: true

# Api::V2::FetchThreedsParams.call

module Api
  module V2
    class FetchThreedsParams
      include Interactor
      include Interactor::Contracts

      expects do
        required(:user).filled
      end

      on_breach do |breaches|
        puts '1'*300
      end

      before do

      end

      def call

      end
    end
  end
end