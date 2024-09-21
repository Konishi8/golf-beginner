// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import * as bootstrap from "bootstrap/dist/js/bootstrap"
document.addEventListener("turbo:load", () => {
    console.log("Turbo is working!");
});