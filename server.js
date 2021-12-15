const express = require('express')
const path = require('path')


const app = express()

//template engine
app.set('view engine', 'ejs')

// middleware
app.use(express.json())

app.use(express.urlencoded({ extended: true }))


// routers
const apiRouter = require('./routes/apiRoutes')
const viewRouter = require('./routes/viewRoute')
app.use('/api', apiRouter)
app.use('/', viewRouter)

//static public folder
app.use(express.static(path.join(__dirname, 'public')))


//handle 404
app.use((req, res, next) => {
    res.status(404).render('404', {title: '404'})
})


//port
const PORT = process.env.PORT || 3000

//server
app.listen(PORT, () => {
    console.log(`server is running on port ${PORT}`)
})