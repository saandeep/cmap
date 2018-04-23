'use strict';

exports.getallhotels = function(args, res, next) {
  /**
   * Get All hotels 
   *
   * returns hotels
   **/
  var examples = {};
  examples['application/json'] = {
	"hotels": [{
		"hotelname": "Hotel Andra",
		"city": "Seattle",
		"address1": "2000 4th Ave",
		"stateProvinceCode": "WA",
		"highRate": "139",
		"lowRate": "109",
		"countryCode": "US",
		"airportCode": "SEA",
		"locationDescription": "Near Pike Place Market",
		"amenityMask": "1441795",
		"postalCode": "98121",
		"rateCurrencyCode": "USD",
		"hotelRating": {
			"hotelId": 119562,
			"rating": 4,
			"tripAdvisorRating": 4,
			"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif"
		}
	}, {
		"hotelname": "Hotel Deca - A Noble House Hotel",
		"city": "Burlingame",
		"address1": "4507 Brooklyn Avenue NE",
		"stateProvinceCode": "WA",
		"highRate": "159",
		"lowRate": "119",
		"countryCode": "US",
		"airportCode": "SEA",
		"locationDescription": "In Seattle (University District)",
		"amenityMask": "3",
		"postalCode": "98105",
		"rateCurrencyCode": "USD",
		"hotelRating": {
			"hotelId": 191964,
			"rating": 3.5,
			"tripAdvisorRating": 4,
			"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif"
		}
	}, {
		"hotelname": "Motif Seattle",
		"city": "Seattle",
		"address1": "1415 5th Ave",
		"stateProvinceCode": "WA",
		"highRate": "289",
		"lowRate": "259",
		"countryCode": "US",
		"airportCode": "SEA",
		"locationDescription": "Near Pike Place Market",
		"amenityMask": "7798786",
		"postalCode": "98101",
		"rateCurrencyCode": "USD",
		"hotelRating": {
			"hotelId": 1257278,
			"rating": 4,
			"tripAdvisorRating": 3.5,
			"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/3.5-12345-4.gif"
		}
	}, {
		"hotelname": "Sheraton Seattle Hotel",
		"city": "New York",
		"address1": "1400 6th Ave",
		"stateProvinceCode": "WA",
		"highRate": "320",
		"lowRate": "205",
		"countryCode": "US",
		"airportCode": "SEA",
		"locationDescription": "Near Pike Place Market",
		"amenityMask": "262147",
		"postalCode": "98101",
		"rateCurrencyCode": "USD",
		"hotelRating": {
			"hotelId": 164116,
			"rating": 4,
			"tripAdvisorRating": 4,
			"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif"
		}
	}, {
		"hotelname": "The West in Seattle",
		"city": "Seattle",
		"address1": "1900 5th Ave",
		"stateProvinceCode": "WA",
		"highRate": "259",
		"lowRate": "209",
		"countryCode": "US",
		"airportCode": "SEA",
		"locationDescription": "Near Pike Place Market",
		"amenityMask": "7806977",
		"postalCode": "98101",
		"rateCurrencyCode": "USD",
		"hotelRating": {
			"hotelId": 164122,
			"rating": 4,
			"tripAdvisorRating": 4,
			"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif"
		}
	}, {
		"hotelname": "W Seattle",
		"city": "Seattle",
		"address1": "1112 4th Ave",
		"stateProvinceCode": "WA",
		"highRate": "210",
		"lowRate": "175",
		"countryCode": "US",
		"airportCode": "SEA",
		"locationDescription": "Near Pike Place Market",
		"amenityMask": "7798785",
		"postalCode": "98101",
		"rateCurrencyCode": "USD",
		"hotelRating": {
			"hotelId": 213497,
			"rating": 4,
			"tripAdvisorRating": 4,
			"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif"
		}
	}]
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.gethoteldetails = function(args, res, next) {
  /**
   * Get hotel and rating details for a given hotel name
   *
   * hotelname String 
   * returns hotel
   **/
  var examples = {};
  examples['application/json'] = {
  "hotelRating" : {
    "tripAdvisorRating" : 123,
    "rating" : 123,
    "hotelId" : 123,
    "tripAdvisorRatingUrl" : "aeiou"
  },
  "city" : "aeiou",
  "address1" : "aeiou",
  "countryCode" : "aeiou",
  "locationDescription" : "aeiou",
  "postalCode" : 123,
  "amenityMask" : 123,
  "rateCurrencyCode" : "aeiou",
  "airportCode" : "aeiou",
  "hotelname" : "aeiou",
  "stateProvinceCode" : "aeiou"
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.gethotelinventory = function(args, res, next) {
  /**
   * Get inventory, availabiliy and pricing for a given hotel name
   *
   * hotelname String 
   * returns inventory
   **/
  var examples = {};
  examples['application/json'] = {
  "inventory" : [ {
    "availableRooms" : 12,
    "price" : "208 USD",
    "roomType" : "King Bed"
  }, {
    "availableRooms" : 26,
    "price" : "168 USD",
    "roomType" : "Queen Bed"
  }  ]
};
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

exports.gethotelreviews = function(args, res, next) {
  /**
   * Get reviews  for a given hotel name
   *
   * hotelname String 
   * returns review
   **/
  var examples = {};
  examples['application/json'] = [{
	"hotelRating": {
		"hotelId": 119562,
		"rating": 4,
		"tripAdvisorRating": 4,
		"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif"
	},
  "review" : "a review",
  "hotelId": 119562,
  "hotelname": "Hotel Andra"
}, {
	"hotelRating": {
		"hotelId": 119562,
		"rating": 4,
		"tripAdvisorRating": 4,
		"tripAdvisorRatingUrl": "http://www.tripadvisor.com/img/cdsi/img2/ratings/traveler/4.0-12345-4.gif"
	},
  "review" : "another review",
  "hotelId": 119562,
  "hotelname": "Hotel Andra"
}];
  if (Object.keys(examples).length > 0) {
    res.setHeader('Content-Type', 'application/json');
    res.end(JSON.stringify(examples[Object.keys(examples)[0]] || {}, null, 2));
  } else {
    res.end();
  }
}

