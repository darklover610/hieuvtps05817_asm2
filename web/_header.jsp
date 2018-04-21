<%-- 
    Document   : _header
    Created on : Sep 16, 2016, 9:34:47 PM
    Author     : Nghia
--%>

<%-- 
    Document   : index
    Created on : Mar 30, 2017, 3:37:08 PM
    Author     : Tran Thanh Nghia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LAPTOP ONLINE STORE</title>
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <script src="js/jquery.min.js"></script>
        <!-- Custom Theme files -->
        <!--theme-style-->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="fontawesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <!--//theme-style-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Bonfire Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--fonts-->
        <link href='http://fonts.googleapis.com/css?family=Exo:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <!--//fonts-->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                });
            });
        </script>
        <!--slider-script-->
        <script src="js/responsiveslides.min.js"></script>
        <script>
            $(function () {
                $("#slider1").responsiveSlides({
                    auto: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true
                });
            });
        </script>
        <!--//slider-script-->
        <script>$(document).ready(function (c) {
                $('.alert-close').on('click', function (c) {
                    $('.message').fadeOut('slow', function (c) {
                        $('.message').remove();
                    });
                });
            });
        </script>
        <script>$(document).ready(function (c) {
                $('.alert-close1').on('click', function (c) {
                    $('.message1').fadeOut('slow', function (c) {
                        $('.message1').remove();
                    });
                });
            });
        </script>

         <!--Hiệu ứng tuyết rơi-->
        <script type="text/javascript" language="javascript">
            window.snowStormConfigs = {
                'snowColor': '#00FF00'        //Thay đổi màu sắc của bông tuyết tại đây
                , 'snowCharacter': '&bull;'    //Thay đổi hình dạng của bông tuyết tại đây
            }
            setTimeout(function () {
                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id))
                        return;
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//static.pep.vn/library/pepvn/blog-xtraffic/effects/snow-storm/main.min.js";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'blog-xtraffic-snow-storm'));
            }, 100);
        </script>
        <script type="text/javascript" src="http://www.trungtamtinhoc.edu.vn/api/snowstorm.js"></script>
        <!--<script type='text/javascript' src='https://hoangluyen.com/demo/js/snow.mini.js'></script>-->

        <!--Hiệu ứng mai rơi -->
        <script type='text/javascript'>
//<![CDATA[
            var pictureSrc = "https://1.bp.blogspot.com/-CXx9jt2JMRk/Vq-Lh5fm88I/AAAAAAAASwo/XivooDn_oSY/s1600/hoamai.png"; //the location of the snowflakes
            var pictureWidth = 15; //the width of the snowflakes
            var pictureHeight = 15; //the height of the snowflakes
            var numFlakes = 10; //the number of snowflakes
            var downSpeed = 0.01; //the falling speed of snowflakes (portion of screen per 100 ms)
            var lrFlakes = 10; //the speed that the snowflakes should swing from side to side


            if (typeof (numFlakes) != 'number' || Math.round(numFlakes) != numFlakes || numFlakes < 1) {
                numFlakes = 10;
            }

//draw the snowflakes
            for (var x = 0; x < numFlakes; x++) {
                if (document.layers) { //releave NS4 bug
                    document.write('<layer id="snFlkDiv' + x + '"><imgsrc="' + pictureSrc + '" height="' + pictureHeight + '"width="' + pictureWidth + '" alt="*" border="0"></layer>');
                } else {
                    document.write('<div style="position:absolute; z-index:9999;"id="snFlkDiv' + x + '"><img src="' + pictureSrc + '"height="' + pictureHeight + '" width="' + pictureWidth + '" alt="*"border="0"></div>');
                }
            }

//calculate initial positions (in portions of browser window size)
            var xcoords = new Array(), ycoords = new Array(), snFlkTemp;
            for (var x = 0; x < numFlakes; x++) {
                xcoords[x] = (x + 1) / (numFlakes + 1);
                do {
                    snFlkTemp = Math.round((numFlakes - 1) * Math.random());
                } while (typeof (ycoords[snFlkTemp]) == 'number');
                ycoords[snFlkTemp] = x / numFlakes;
            }

//now animate
            function flakeFall() {
                if (!getRefToDivNest('snFlkDiv0')) {
                    return;
                }
                var scrWidth = 0, scrHeight = 0, scrollHeight = 0, scrollWidth = 0;
//find screen settings for all variations. doing this every time allows for resizing and scrolling
                if (typeof (window.innerWidth) == 'number') {
                    scrWidth = window.innerWidth;
                    scrHeight = window.innerHeight;
                } else {
                    if (document.documentElement && (document.documentElement.clientWidth || document.documentElement.clientHeight)) {
                        scrWidth = document.documentElement.clientWidth;
                        scrHeight = document.documentElement.clientHeight;
                    } else {
                        if (document.body && (document.body.clientWidth || document.body.clientHeight)) {
                            scrWidth = document.body.clientWidth;
                            scrHeight = document.body.clientHeight;
                        }
                    }
                }
                if (typeof (window.pageYOffset) == 'number') {
                    scrollHeight = pageYOffset;
                    scrollWidth = pageXOffset;
                } else {
                    if (document.body && (document.body.scrollLeft || document.body.scrollTop)) {
                        scrollHeight = document.body.scrollTop;
                        scrollWidth = document.body.scrollLeft;
                    } else {
                        if (document.documentElement && (document.documentElement.scrollLeft || document.documentElement.scrollTop)) {
                            scrollHeight = document.documentElement.scrollTop;
                            scrollWidth = document.documentElement.scrollLeft;
                        }
                    }
                }
//move the snowflakes to their new position
                for (var x = 0; x < numFlakes; x++) {
                    if (ycoords[x] * scrHeight > scrHeight - pictureHeight) {
                        ycoords[x] = 0;
                    }
                    var divRef = getRefToDivNest('snFlkDiv' + x);
                    if (!divRef) {
                        return;
                    }
                    if (divRef.style) {
                        divRef = divRef.style;
                    }
                    var oPix = document.childNodes ? 'px' : 0;
                    divRef.top = (Math.round(ycoords[x] * scrHeight) + scrollHeight) + oPix;
                    divRef.left = (Math.round(((xcoords[x] * scrWidth) - (pictureWidth / 2)) + ((scrWidth / ((numFlakes + 1) * 4)) * (Math.sin(lrFlakes * ycoords[x]) - Math.sin(3 * lrFlakes * ycoords[x])))) + scrollWidth) + oPix;
                    ycoords[x] += downSpeed;
                }
            }

//DHTML handlers
            function getRefToDivNest(divName) {
                if (document.layers) {
                    return document.layers[divName];
                } //NS4
                if (document[divName]) {
                    return document[divName];
                } //NS4 also
                if (document.getElementById) {
                    return document.getElementById(divName);
                } //DOM (IE5+, NS6+, Mozilla0.9+, Opera)
                if (document.all) {
                    return document.all[divName];
                } //Proprietary DOM - IE4
                return false;
            }

            window.setInterval('flakeFall();', 100);
//]]>
        </script>
        <div class="slider rslides">           
            <ul class="rslides" id="slider1">              
                <li><img src="images/bn1.png" ></li>               
            </ul>
        </div>
        
</head>
</html>


   
   
   
   
   
   