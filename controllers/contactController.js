const db = require('../models')

// model
const Contact = db.contact

// functions

// 1. create a new contact

const addContact = async (req, res) => {

    let info = {
        full_name: req.body.full_name,
        email: req.body.email,
        subject: req.body.subject,
        message: req.body.message
    }

    const contact = await Contact.create(info)
    res.status(200).send(contact)
    console.log(contact)

}

// 2. Get All Contacts

const getAllContacts= async (req, res) => {

    const contacts = await Contact.findAll({})
    res.status(200).send(contacts)

}

module.exports = {
    addContact,
    getAllContacts
}

