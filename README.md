# Readme

Testing gem `interactor-contracts`

# Details

No superclass, `on_breach` is called:
```ruby
module Api
  module V2
    class FetchThreedsParams
      include Interactor
      include Interactor::Contracts

      expects do
        required(:user).filled
      end

      on_breach do |breaches|
        puts '1'*30
      end

      before do

      end

      def call

      end
    end
  end
end

# rails c
# Running via Spring preloader in process 70120
# Loading development environment (Rails 5.2.4.4)
# 2.5.1 :001 > Api::V2::FetchThreedsParams.call
# 111111111111111111111111111
#  => #<Interactor::Context>
```

With superclass, `on_breach` is not called:
```ruby
class BaseInteractor
  include Interactor
  include Interactor::Contracts
end

module Api
  class FetchThreedsParams < ::BaseInteractor
    expects do
      required(:user).filled
    end

    on_breach do |breaches|
      puts '1'*30
    end

    before do

    end

    def call

    end
  end
end

# rails c
# Running via Spring preloader in process 70120
# Loading development environment (Rails 5.2.4.4)
# 2.5.1 :001 > Api::FetchThreedsParams.call
# => #<Interactor::Context user=["user is missing"]>
```