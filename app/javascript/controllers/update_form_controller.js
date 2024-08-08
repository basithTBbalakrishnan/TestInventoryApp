import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["quantity"];

  connect() {
    console.log("Stimulus controller connected");
  }

  reset() {
    this.quantityTarget.value = "";
  }
}
