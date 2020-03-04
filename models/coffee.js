'use strict'
module.exports = (sequelize, DataTypes) => {
  var coffee = sequelize.define(
    'coffee',
    {
      name: DataTypes.STRING,
      type: DataTypes.STRING
    },
    {}
  )
  coffee.associate = function(models) {
    // coffee belongsTo Shop
    coffee.belongsTo(models.shop, { foreignKey: 'shopId' })
  }
  return coffee
}
