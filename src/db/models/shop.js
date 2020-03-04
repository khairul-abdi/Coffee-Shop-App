'use strict';
module.exports = (sequelize, DataTypes) => {
  const shop = sequelize.define('shop', {
    name: DataTypes.STRING
  }, {});
  shop.associate = function(models) {
    // shop hasMany Coffee
    shop.hasMany(models.coffee, {
      foreignKey: 'shopId'
    })
  };
  return shop;
};