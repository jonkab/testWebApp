/**
 * Created by jkabrit on 27/05/16.
 */
'use strict';
var Handlebars = require('handlebars/dist/handlebars');
var jQuery = require('jquery/dist/jquery.min');

(function ($) {

    /* [START] -------- FIRST TEMPLATE */
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

    /* [END] -- FIRST TEMPLATE */

    /* [START] -------- SECOND TEMPLATE */
    // Register a helper
    Handlebars.registerHelper('capitalize', function(str){
        // str is the argument passed to the helper when called
        str = str || '';
        return str.slice(0,1).toUpperCase() + str.slice(1);
    });

    // Grab the template script
    var theTemplateScript = $("#built-in-helpers-template").html();

    // Compile the template
    var theTemplate = Handlebars.compile(theTemplateScript);

    // We will call this template on an array of objects
    var context = {
        animals:[
            {
                name: "cow",
                noise: "moooo"
            },
            {
                name: "cat",
                noise: "meow"
            },
            {
                name: "fish",
                noise: ""
            },
            {
                name: "farmer",
                noise: "Get off my property!"
            }
        ]
    };

    // Pass our data to the template
    var theCompiledHtml = theTemplate(context);

    // Add the compiled html to the page
    $('.content-placeholder').html(theCompiledHtml);


})(jQuery);
