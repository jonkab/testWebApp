/**
 * Created by jkabrit on 13/10/2016.
 */

'use strict';

var jQuery = require('jquery/dist/jquery.min');

(function ($, window, document, undefined) {

    var pluginName = 'creatList',
        defaults = {
            classNames: {
                submit: 'submit',
                loading: 'is-submiting',
                error: 'error'
            }
        };

    // The actual plugin constructor
    function Plugin(element, options) {
        this.$element = $(element);
        var metadata = this.$element.data();
        this.options = $.extend({}, defaults, options, metadata);
        //
        this._defaults = defaults;
        this._name = pluginName;

        this.$body = $('body');
        this.$blockList = this.$body.find('.blockList');

        //
        this.init();
    }

    Plugin.prototype = {

        init: function() {
            this.constructList();
        },

        constructList: function(){


            var techno = ['JS','JAVA','HTML','CSS','PHP','LESS', 'RUBY','PYTHON','C#','PASCAL','OBJECTIVE-C','COBALT'];
            var list = "";

            if(this.$blockList){

                var i=0;
                var colorClass = "";
                var colorOdd = "odd";
                var colorEven = "even";

                while(i<techno.length){

                    if(i%2 !== 0){
                        colorClass = colorOdd;
                    }else{
                        colorClass = colorEven;
                    }

                    list += "<li class='"+colorClass+"'>"+ techno[i]+"</li>";
                    this.$blockList.html(list);
                    i++;

                }
            }
        }


    };

    // A really lightweight plugin wrapper around the constructor,
    // preventing against multiple instantiations
    $.fn[pluginName] = function (options) {
        return this.each(function () {
            if (!$.data(this, 'plugin_' + pluginName)) {
                $.data(this, 'plugin_' + pluginName,
                    new Plugin(this, options));
            }
        });
    };

})(jQuery, window, document);
