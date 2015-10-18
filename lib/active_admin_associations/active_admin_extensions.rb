module ActiveAdmin
  class Resource
    attr_accessor :form_columns
    attr_accessor :form_associations
    attr_accessor :active_association_form
  end
  
  class << self
    def resources
      application.namespaces.each{|n| 
        n.resources.send(:resources)
      }.flatten.compact.select{|r|
        r.class == ActiveAdmin::Resource
      }.map(&:resource_class)
    end
  end
end
