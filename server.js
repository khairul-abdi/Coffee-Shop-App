const express = require('express')
const bodyParser = require('body-parser')
const exphbs = require('express-handlebars')
const Coffee = require('./src/db/models').coffee
const Shop = require('./src/db/models').shop
const path = require('path')



// Shop.create({
//   name: 'Koupie Semerbak'
// }).then(shop => {
//   shop.createCoffee({
//     name: 'Kopi Aceh',
//     type: 'dark'
//   }).then(() => console.log('Worked!'))
// })


Shop.findAll({
  include: [Coffee]
}).then(shops => {
  console.log(shops)
})



const app = express()

app.use(bodyParser.urlencoded({ extended: true }))
app.use(bodyParser.json())

app.use(express.static(path.join(__dirname, 'public')))

app.engine('handlebars', exphbs({defaultLayout: 'main'}));
app.set('view engine', 'handlebars');

// Routes
app.get('/', (req, res) => {
  Shop.findAll({
    include: [Coffee]
  }).then(shops => {
    res.render('index', { shops: shops })
  })
})



app.post('/shops', (req, res) => {
  Shop.create(req.body)
    .then(() => res.redirect('/'))
})

app.post('/coffee/:shop_id', (req, res) => {
  Coffee.create({ ...req.body, shopId: req.params.shop_id})
    .then(() => res.redirect('/'))
})

const port = process.env.PORT || 5000

app.listen(port, () => console.log(`Server running on port ${port}`))







