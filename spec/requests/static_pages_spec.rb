require 'spec_helper'

describe "Static pages" do

  
  describe "Pagina Home" do

    it "should have the h1 'Gestiune RoR'" do
      visit root_path
      page.should have_selector('h1', text: 'Gestiune RoR')
    end

    it "should have the base title" do
      visit root_path
      page.should have_selector('title',
                        text: "Aplicatie de gestiune - Ruby on Rails | Home")
    end


  end  
  
  

  describe "Pagina Ajutor" do

    it "should have the h1 'Ajutor'" do
      visit help_path
      page.should have_selector('title', :text => " | Ajutor")
     end
	 
    it "should have the content 'Ajutor'" do
      visit help_path
      page.should have_selector('title',
	                    :text => "Aplicatie de gestiune - Ruby on Rails | Ajutor")
    end
  end  
  
  describe "Pagina Despre noi" do

    it "should have the h1 'Despre noi'" do
      visit about_path
      page.should have_selector('title', :text => " | Despre noi")
     end
	 
    it "should have the content 'Despre noi'" do
      visit about_path
      page.should have_selector('title',
	                    :text => "Aplicatie de gestiune - Ruby on Rails | Despre noi")
    end
  end  
  
  describe "Pagina de contact" do

    it "should have the h1 'Contact'" do
      visit contact_path
      page.should have_selector('h1', text: 'Contact')
    end

    it "should have the title 'Contact'" do
      visit contact_path
      page.should have_selector('title',
	                    :text => "Aplicatie de gestiune - Ruby on Rails | Contact")
    end
  end  
  
end
