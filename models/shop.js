'use strict'
module.exports = (sequelize, DataTypes) => {
  var shop = sequelize.define(
    'shop',
    {
      name: DataTypes.STRING
    },
    {}
  )
  shop.associate = function(models) {
    // shop hasMany Coffees
    shop.hasMany(models.coffee)
  }
  return shop
}
