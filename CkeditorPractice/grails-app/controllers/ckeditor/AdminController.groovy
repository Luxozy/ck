package ckeditor

import myproject.Admin
import myproject.User

class AdminController {

    def index() {
        println("inside index page")

        def user = User.findByEmail(session.user.email)
        model: [role:session.user.role,u:user]
       // render view: ""
    }

    def saveData(){
        //params.d ma data aaucha  like this <p>My name is laxmi</p>
        //hamilai database ma sto character < haru store garna didaina so we have to encode this html symbol


        def d = params.d.encodeAsHTML()

        println "ddddddddddddddddd: "+ d

        //get one of the  admin user
        def admin = Admin.get(1)
//let us update in name field
        admin.name = d

        admin.save()





    }
}
