const nodemailer = require("nodemailer");


class MailerSingletone {
    constructor() {
        this.transporter = nodemailer.createTransport({
            service: 'gmail',
            auth: {
                user: 'attic2013@gmail.com',
                pass: 'Russianserjik2251'
            },
            tls:{
                rejectUnauthorized: false
            }
        });
        
        this.transporter.verify((error, success) => {
            if (error) {
                console.log(error);
            } 
            else {
                console.log('EMAIL SERVER READY!');
            }
        });
    }

    
    getMailAdress() {
        return 'Open Source RP server <mail@gmail.com>';
    }

    isEmailValid(email) {
        const re = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;
        return re.test(email);
    }

    sendMail(message) {
        this.transporter.sendMail(message, (err, info) => {
            if (err) {
                console.log(`Error occurred. ${err.message}`);
                return process.exit(1);
            }
        });
    }

}
const mailerSingletone = new MailerSingletone();
module.exports = mailerSingletone;
