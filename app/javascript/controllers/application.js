//import { Application } from "@hotwired/stimulus"

//const application = Application.start()

// Configure Stimulus development experience
//application.debug = false
//window.Stimulus   = application

//export { application }
// Importing Turbo, Stimulus, and UJS for proper functionality
 import "@rails/ujs"
 import "@hotwired/turbo-rails"
 import { Application } from "stimulus"
 import { definitionsFromContext } from "stimulus/webpack-helpers"
 Rails.start()


 const application = Application.start()
 const context = require.context("controllers", true, /\.js$/)
 application.load(definitionsFromContext(context))
 
