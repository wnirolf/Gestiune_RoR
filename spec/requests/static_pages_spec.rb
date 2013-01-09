require 'spec_helper'

describe "Static pages" do

  describe "Pagina Home" do

    it "should have the h1 'Gestiune RoR'" do
      visit '/static_pages/home'
      page.should have_selector('title', :text => " | Home")
     end
	 
	it "should have the title 'Home'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Aplicatie de gestiune - Ruby on Rails | Home")
    end 
	 
  end
  

  describe "Pagina Ajutor" do

    it "should have the h1 'Ajutor'" do
      visit '/static_pages/help'
      page.should have_selector('title', :text => " | Ajutor")
     end
	 
    it "should have the content 'Ajutor'" do
      visit '/static_pages/help'
      page.should have_selector('title',
	                    :text => "Aplicatie de gestiune - Ruby on Rails | Ajutor")
    end
  end  
  
  describe "Pagina Despre noi" do

    it "should have the h1 'Despre noi'" do
      visit '/static_pages/about'
      page.should have_selector('title', :text => " | Despre noi")
     end
	 
    it "should have the content 'Despre noi'" do
      visit '/static_pages/about'
      page.should have_selector('title',
	                    :text => "Aplicatie de gestiune - Ruby on Rails | Despre noi")
    end
  end  
  
end
