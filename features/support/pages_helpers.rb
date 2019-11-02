module Pages
    def product_page
      @product ||= Product.new
    end

    def stores_page
      @stores ||= Stores.new      
    end

    def services_page
      @services ||= Services.new      
    end
    
    def categories_page
      @categories ||= Categories.new
    end
    
end