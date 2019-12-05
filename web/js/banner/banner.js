jQuery(document).ready(function ($) {
    var _SlideshowTransitions = [
        { $Duration: 900, $Opacity: 2 }
    ];

    var options = {
        $AutoPlay: 1,
        $ArrowNavigatorOptions: {
            $Class: $JssorArrowNavigator$,
            $ChanceToShow: 2
        },
        $SlideshowOptions: {
            $Class: $JssorSlideshowRunner$,
            $Transitions: _SlideshowTransitions,
            $TransitionsOrder: 1,
            $ShowLink: true
        },
        $BulletNavigatorOptions: {
            $Class: $JssorBulletNavigator$,
            $ChanceToShow: 2
        }
    };
    
    var jssor_slider1 = new $JssorSlider$("jssor_1", options);
    //responsive code begin
    //you can remove responsive code if you don't want the slider scales while window resizes
    function ScaleSlider() {
        var bodyWidth = document.body.clientWidth;
        if (bodyWidth)
            jssor_slider1.$ScaleWidth(Math.min(bodyWidth, 1920));
        else
            window.setTimeout(ScaleSlider, 10);
    }
    ScaleSlider();

    $(window).bind("load", ScaleSlider);
    $(window).bind("resize", ScaleSlider);
    $(window).bind("orientationchange", ScaleSlider);
    //responsive code end
});