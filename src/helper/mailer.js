const nodemailer = require("nodemailer");
const { URL_BACKEND, EMAIL, EMAIL_PASS } = require("../helper/env");
const transporter = nodemailer.createTransport({
  // host: 'smtp.gmail.com',
  service: "Gmail",
  auth: {
    user: EMAIL, // generated ethereal user
    pass: EMAIL_PASS, // generated ethereal password
  },
});
const register = (email, user, token) => {
  return new Promise(async (resolve, reject) => {
    try {
      let info = await transporter.sendMail({
        from: EMAIL, // sender address
        to: email, // list of receivers
        subject: "Admin Zwallet", // Subject line
        html: `Hello ${user},<br> Please Click this link to verify your email.<br><a href=${URL_BACKEND}/activate/${token}/${email}>Click here to verify</a>`,
      });
      resolve(info);
    } catch (error) {
      console.log(error);
      reject(new Error(error));
    }
  });
};

module.exports = {
  register,
};
