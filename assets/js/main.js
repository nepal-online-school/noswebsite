---
exclude_in_search: true
layout: null
---
(function($) {
    'use strict';
    $(function() {
        $('[data-toggle="tooltip"]').tooltip();
        $('[data-toggle="popover"]').popover();
        $('.popover-dismiss').popover({
            trigger: 'focus'
        })
    });

    function bottomPos(element) {
        return element.offset().top + element.outerHeight();
    }
    $(function() {
        var promo = $(".js-td-cover");
        if (!promo.length) {
            return
        }
        var promoOffset = bottomPos(promo);
        var navbarOffset = $('.js-navbar-scroll').offset().top;
        var threshold = Math.ceil($('.js-navbar-scroll').outerHeight());
        if ((promoOffset - navbarOffset) < threshold) {
            $('.js-navbar-scroll').addClass('navbar-bg-onscroll');
        }
        $(window).on('scroll', function() {
            var navtop = $('.js-navbar-scroll').offset().top - $(window).scrollTop();
            var promoOffset = bottomPos($('.js-td-cover'));
            var navbarOffset = $('.js-navbar-scroll').offset().top;
            if ((promoOffset - navbarOffset) < threshold) {
                $('.js-navbar-scroll').addClass('navbar-bg-onscroll');
            } else {
                $('.js-navbar-scroll').removeClass('navbar-bg-onscroll');
                $('.js-navbar-scroll').addClass('navbar-bg-onscroll--fade');
            }
        });
    });
}(jQuery));

(function($) {
  'use strict';

  // next and previous video buttons action handler 
  $('.next-btn, .prev-btn').click(function(){
    var id = $(this).data("videoid");
    var src = "https://www.youtube.com/embed/" + id + "?rel=0"

    // hide the current button parent div
    $(this).parent().addClass('d-none');
    // remove next item d-none
    $('#video-'+id).removeClass('d-none');

    $("#video_wrapper .embed-responsive-item").replaceWith(
      '<iframe class="embed-responsive-item" src="' + src + '" allowfullscreen></iframe>'
    );
  });
}(jQuery));
