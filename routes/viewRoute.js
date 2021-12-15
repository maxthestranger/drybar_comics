// router
const router = require('express').Router()


// use routers
router.get('/', (req, res, next) =>{
    res.render('index', {title: 'Home'})
})

router.get('/contact', (req, res, next) =>{
    res.render('contact', {title: 'Contact Us'})
})

router.get('/activity', (req, res, next) =>{
    res.render('activity', {title: 'Activity'})
})

router.get('/faq', (req, res, next) =>{
    res.render('faq', {title: 'FAQ'})
})




module.exports = router