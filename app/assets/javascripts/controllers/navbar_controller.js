import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["dropdown"]

  dropdownHandler(event) {
    this.dropdownTarget.classList.toggle("hidden");
  }
  menuHandler(el, val) {
    let MainList = el.parentElement.getElementsByTagName("ul")[0];
    let closeIcon = el.parentElement.getElementsByClassName("close-m-menu")[0];
    let showIcon = el.parentElement.getElementsByClassName("show-m-menu")[0];
    if (val) {
        MainList.classList.remove("hidden");
        el.classList.add("hidden");
        closeIcon.classList.remove("hidden");
    } else {
        showIcon.classList.remove("hidden");
        MainList.classList.add("hidden");
        el.classList.add("hidden");
    }
  }
  searchHandler(element) {
    let Input = element.parentElement.getElementsByTagName("input")[0];
    Input.classList.toggle("w-0");
    Input.classList.toggle("w-24");
  }
}
