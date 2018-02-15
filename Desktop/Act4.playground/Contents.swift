//Tema 4,5
//Crear objeto post y sus relaciones
//Completar el código visto en clase
//Subir repositorio a github
//User(imagenDeUsuario)//id -- UUID random// let post = Post(usuario, imagen, texto)
//post.incrementLike()//post.getLikes()
//post.incrementComments()//post.getComments()
//getDate -- Tema 5
//post.setLocation()//post.getLocation()
//post.setImage()//post.getImage() - Optional
//post.getContadores() -> tupla de comments y likes


// 0 = 1970 x = 776457687 timestamp ->
// UTC, GMT
//Format("YYYY/mm/dd:T:HH:MM:SS:mm.000'Z'") - hulu format date
import UIKit
var now = Date()  //MM d, YYYY 'at' hh:mm 'PM'
var pastDate = Date(timeIntervalSinceNow: -60*60*24*7 )

// String x = "";
// x.reverse()
// x.charAt(index)

//
extension Date {
    func getTimeAgo() -> String {
    let timeAgo = Int(Date().timeIntervalSince(self))
        if timeAgo < 60 {
            return "\(timeAgo) seconds ago"
        } else if timeAgo < 60 * 60 {
            return "\(timeAgo / 60) minutes ago"
        } else if timeAgo < 60 * 60 * 24 {
            return "\(timeAgo / 60 / 60) hours ago"
        } else if timeAgo < 60 * 60 * 24 * 7 {
            return "\(timeAgo / 60 / 60 / 24) day ago"
        } else if timeAgo < 60 * 60 * 24 * 7 * 4 {
            return "\(timeAgo / 60 / 60 / 24 / 7) week ago"
        }
        
        // week
        //before a month print the format yyyy/mm/dd - extra 
        return "\(timeAgo) seconds ago"
    }
}

    var secondsAgo: String = pastDate.getTimeAgo()
    class Post {
        var text:String
        var like:Int = 0
        var comment:Int = 0
        var user:User!
        func getText() -> String {
            return (self.text)
        }
        init(text:String, user:User) {
            self.text = text
            self.user = user
        }
        func IncrementLike(){
            self.like+=1
        }
        func getLike() -> Int {
            return (self.like)
        }
        func IncrementComment(){
            self.comment+=1
        }
        func getComment() -> Int{
            return (self.comment)
        }
        
        func getUser()-> User {
          return user
        }
        
        
}

class User {
    var name:String
    var image:String
    var id = UUID().uuidString
    
    init(name:String, image:String) {
        self.name = name
        self.image = image
        
    }
    func getName() -> (String, String) {
        return (self.name,self.image)
    }
    func getID() -> String {
        return id
    }
    
}
 var user = User(name: "leo", image: "la imagen chida")
 var post = Post(text: "Hola, soy leo, me gusta ser leo", user: user)

post.IncrementComment()
post.IncrementComment()
post.IncrementComment()
post.IncrementLike()
post.IncrementLike()
post.IncrementLike()
post.IncrementLike()
post.IncrementLike()
post.getUser().getName()
post.getUser().getID()



print("Usuario \(user.getName()), con el ID \(user.getID())")
print("Texto \(post.getText()) ")
print("Cuenta con \(post.getLike()) likes, con \(post.getComment()) comentarios")

    //var leo = User("Leo", "image", )
//var post = Post(leo, "imagen", "texto"))
//post.getUser()
//post.incrComments()
//post.incrComments()
//post.getComments()
//2
