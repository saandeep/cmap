'use strict';

var url = require('url');

var Default = require('./DefaultService');

module.exports.getallhotels = function getallhotels (req, res, next) {
  Default.getallhotels(req.swagger.params, res, next);
};

module.exports.gethoteldetails = function gethoteldetails (req, res, next) {
  Default.gethoteldetails(req.swagger.params, res, next);
};

module.exports.gethotelinventory = function gethotelinventory (req, res, next) {
  Default.gethotelinventory(req.swagger.params, res, next);
};

module.exports.gethotelreviews = function gethotelreviews (req, res, next) {
  Default.gethotelreviews(req.swagger.params, res, next);
};
