'use strict';
module.exports = (sequelize, DataTypes) => {
  const coffee = sequelize.define('coffee', {
    name: DataTypes.STRING,
    type: DataTypes.STRING,
    shopId: {
      type: DataTypes.INTEGER,
      references: {
        model: 'shop',
        key: 'id'
      }
    }
  }, {});
  coffee.associate = function(models) {
    // coffee belongsTo Shop
    coffee.belongsTo(models.shop, { 
      foreignKey: 'id',
      target_Key: 'shopId'
    })
  };
  return coffee;
};