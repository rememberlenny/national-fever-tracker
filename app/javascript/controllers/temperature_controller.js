import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "temperatureButtons", "temperatureValue", "temperatureHigh", 'temperatureFever', 'temperatureNormal' ]

  connect() {
    this.tempButtons = this.temperatureButtonsTarget;
    this.tempValue = this.temperatureValueTarget;
    this.tempHigh = this.temperatureHighTarget;
    this.tempFever = this.temperatureFeverTarget;
    this.tempNormal = this.temperatureNormalTarget;
  }

  temperatureButtonChanged() {
    this.tempValue.value = null;
  }

  temperatureValueChanged() {
    this.tempHigh.checked = false;
    this.tempFever.checked = false;
    this.tempNormal.checked = false;
  }
}
