package tnw

class User {

    String fname
    String lname
    String username
    String password
    String email
    Date dob
    String passport
    String country
    String phone
    String address
    String city
    String state
    String zip
    String citizenship
    String security
    String answer
    Date lastlogin
    String ip

    static constraints = {
        lastlogin nullable: true
        ip nullable: true
        username unique: true
    }

}
