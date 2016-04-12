/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function removeAddon()
{
    /*If browser resized, check width again */
    if ($(window).width() < 415) {
        $('input-group').remove('input-group-addon');
    }
}

$(document).ready(function () {
    removeAddon();

});