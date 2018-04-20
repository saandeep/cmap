var express = require('express');
var router = express.Router();
var request = require('request');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', {
    title: 'Express'
  });
});

router.post('/hotels', function(req, res, next) {
  var url = req.body.url;
  console.log(req.body);
  request(url, function(error, response, body) {
    if (error) {
      console.log('error:', error);
    } else {
      var body = JSON.parse(body);
      console.log('body:', body);

      res.render('results', {
        hotels: body.hotels
      });
    }
  });
});

module.exports = router;