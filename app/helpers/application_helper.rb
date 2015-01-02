module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Kateco"      
    end
  end
end
