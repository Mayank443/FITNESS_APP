const UserModel = require('../models/UserModel');
const jwt = require('jsonwebtoken');


class UserServices {
    static async registerUser(email, password, age, gender, weight, height, goal, activity) {
        try {
            console.log("email", email, "password", password, "age", age, "gender", gender, "weight", weight, "height", height, "goal", goal, "activity", activity);
            const createUser = new UserModel({ email, password, age, gender, weight, height, goal, activity });
            return await createUser.save();
        }
        catch (err) {
            console.log(err)
        }
    }
    static async getUserByEmail(email) {
        try {
            return await UserModel.findOne({ email }); 
        }
        catch (err) {
            console.log(err)
        }
    }

    static async checkUser(email) {
        try {
            return await UserModel.findOne({ email });
        }
        catch (err) {
            console.log(err)
        }


    }

    static async generateToken(tokenData, JWTSecret_key, expiryTime) {
        try {
            return jwt.sign(tokenData, JWTSecret_key, { expiresIn: expiryTime });
        }
        catch (err) {
            console.log(err)
        }

    }
}
module.exports = UserServices;