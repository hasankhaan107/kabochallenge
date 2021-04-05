// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "packs/custom" //calling the custom javascript file to import the datepicker
import "jquery"
import "bootstrap"
import flatpickr from "flatpickr";
// Initiating the datepicker on load.
document.addEventListener("turbolinks:load", () => {
    $('[data-tooltip-display="true"]').tooltip(),
    flatpickr("[class='flatpickr']", {minDate: "today"}) // Added the validation to select the current date at minimum....
});

Rails.start()
Turbolinks.start()
ActiveStorage.start()
