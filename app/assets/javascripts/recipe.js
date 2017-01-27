/*global $*/

var ready = function (){
    $('.quantities').on('cocoon:after-insert',
     function() {
         $('.quantity-fields').on('cocoon:after-insert',
              function() {
                $(this).children(".ingredient_from_list").remove();
                $(this).children(".remove").remove();
                $(this).children("a.add_fields").hide();
              });
     });
     
     $('.recipe_select').on('change', function(){
         //alert('recipeJS'); 
         //only display without partial file
     });
}

$(document).ready(ready);
$(document).on('page:load', ready);
$(document).on('turbolinks:render', ready);

