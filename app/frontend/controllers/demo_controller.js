
import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "content" ]

  connect() {
    console.log(this.contentTarget)
    console.log('hi')
  }

  pushme(){
    let content = this.contentTarget.value
    console.log(content)
  }
  pushit(){
    let content = this.contentTarget.value
    console.log(content)
  }
}
