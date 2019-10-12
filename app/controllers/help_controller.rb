class HelpController < ApplicationController
  def index
    @options = ['queries', 'usage', 'others']
    @a = 'hello'
  end

  def queries
  end

  def usage
  end

  def others
  end

end
