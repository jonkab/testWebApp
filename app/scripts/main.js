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

    //Smooth click for link anchor
    $(function() {
        $('a[href*="#"]:not([href="#"])').click(function() {
            if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
                var target = $(this.hash);
                target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
                if (target.length) {
                    var top = target.offset().top,
                        calculTop = top - 93;
                    $('html, body').animate({
                        scrollTop: calculTop
                    }, 1000);
                    return false;
                }
            }
        });
    });



})(jQuery);

