package tnw

//import grails.converters.JSON

class RegisterController {

    def index() {

    }

    def save() {
//        print(params.dump() as JSON)

        def cop = COP.values()[params.int('field_profile_type[und]')]
        def dob = "${params.dobday}/${params.dobmonth}/${params.dobyear}"

        if (cop == COP.PERSONAL) {
            def user = new User()
            user.fname = params['field_user_first_name[und][0][value]']
            user.lname = params['field_user_last_name[und][0][value]']
            user.username = params.name
            user.password = params.pass
            user.email = params['field_user_confirm_email_address[und][0][value]']
            user.dob = new Date().parse("d/M/yyyy", dob)
            user.passport = params['field_user_passport_number[und][0][value]']
            user.country = params['field_user_pa_country[und]']
            user.phone = params['field_user_mobile_phone[und][0][value]']
            user.address = params['field_user_pa_address[und][0][value]']
            user.city = params['field_user_pa_city[und][0][value]']
            user.state = params['field_user_pa_state_prov_region[und][0][value]']
            user.zip = params['field_user_pa_zip_postal_code[und][0][value]']
            user.citizenship = params['field_user_country_of_citizenshi[und]']
            user.security = params['questions[0][question]']
            user.answer = params['questions[0][answer]']
            user.ip = request.getRemoteAddr()
            user.lastlogin = new Date()

            if (!user.validate()) {
                flash.message = user.errors
                print flash.message
            }
            if (user.save(flush: true)) {
                new Account(user: user).save(flush: true)
                new Settings(user: user).save(flush: true)

                def file = request.getFile('image_passport')
                if (file && !file.empty) {
                    file.transferTo(new java.io.File("grails-app/assets/images/top/${params.name}.jpg"))
                }

                flash.message = "Success! You've successfully registered an account with us.<br/> You can login with the details you provided."

            } else {
                flash.message = "Error: Username already exists or you left some fields empty."
            }


        } else {
            flash.message = "You can only open a Personal Account from this portal"
        }

        render view: 'index'
    }

    def login() {
        def user = User.findWhere(username: params.name, password: params.pass)

        if (user) {
            session['user'] = user

            redirect(controller: 'user')
        } else {
            redirect(uri: '/?failed')
        }
    }
}
