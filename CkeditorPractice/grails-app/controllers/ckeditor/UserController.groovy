package ckeditor

import myproject.User

class UserController {

    def index() { }

    def home(){

        def username = params.username
        def password = params.password

        def findUser = User.findByEmailAndPassword(username,password)

        if(findUser){
            session.user = findUser
            println(session.user)
            println("checkit")
            redirect(controller: "admin",action: "index")
        }else{
            render("password incorrect")
        }

        /*if(username.equals("l@gmail.com") && password.equals("2121")){


            redirect(controller: "admin",action: "index")
        }else{
            render("password incorrect")
        }
*/
    }
}
