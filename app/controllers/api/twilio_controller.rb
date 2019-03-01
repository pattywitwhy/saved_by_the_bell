class Api::TwilioController < ApplicationController
  class TwilioController < ApplicationController
  skip_before_action :verify_authenticity_token
end
end
