// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
//import "@hotwired/turbo-rails"
//import "@rails/ujs"
//import "controller"
//Rails.start()

//import { Turbo } from "@hotwired/turbo-rails"
//import "@rails/ujs"
//import "controllers"  

// Rails.start()
// Turbo.session.drive = false 

import Rails from "@rails/ujs";
Rails.start();
import "@hotwired/turbo-rails";
import "controllers";
