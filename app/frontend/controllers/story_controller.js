
import { Controller } from "stimulus"
import axiox from 'axios'

export default class extends Controller {
  static targets = [ "clapCount" ]
  
  addClap(event){
      event.preventDefault();
      let slug = event.currentTarget.dataset.slug
      let target = this.clapCountTarget
      axiox.post(`/stories/${slug}/clap`)
       .then(function(response){
         let status = response.data.status
         switch(status){
             case 'sign_in_first':
                 alert('你必須先LOGIN')
                 break;
             default:
                 target.innerHTML = status
         }
         console.log(response.data)
       })
       .catch(function(error){
           console.log(error)
       })

  }
  
}
