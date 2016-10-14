'use strict';

require('babel-polyfill');

var jQuery = require('jquery/dist/jquery.min');
import * as jqueryAndPlugins from './modules/jqueryPlugins';
var _ = require('lodash');
import * as utils from './modules/utils';


(function  ($) {


_.mixin({
    'findByValues': function(collection, property, values) {
        return _.filter(collection, function(item) {
            return _.includes(values, item[property]);
        });
    }
});


    // Methode de récupération IP utilisateur
    function recoverIpUser () {
        $.getJSON("https://api.ipify.org?format=jsonp&callback=?",
            function(json) {
                console.log("Ip user: ", json.ip);
            }
        );
    };

    //recoverIpUser();



    $('.blockList').creatList();





})(jQuery);

