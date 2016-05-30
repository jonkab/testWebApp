/**
 * Created by jkabrit on 27/05/16.
 */
'use strict';
var Handlebars = require('handlebars/dist/handlebars');
var jQuery = require('jquery/dist/jquery.min');

(function ($) {
    var theTemplateScript = $("#example-template").html();

    var theTemplate = Handlebars.compile(theTemplateScript);

    var context = {
        people: [
            {
                id : '0',
                properties:[
                    {
                        firstName: 'Jean',
                        lastName: 'Durand',
                        sexe: 'homme',
                        age: '20'
                    }
                ]
            },
            {
                id : '1',
                properties:[
                    {
                        firstName: 'Julie',
                        lastName: 'Blanchard',
                        sexe: 'femme',
                        age: '18'
                    }
                ]
            }
        ]
    };

    // Pass our data to the template
    var theCompiledHtml = theTemplate(context);

    // Add the compiled html to the page
    $(document.body).append(theCompiledHtml);
})(jQuery);
