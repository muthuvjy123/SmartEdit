if (typeof jQuery !== "undefined" && typeof saveAs !== "undefined") {
    (function($) {
        $.fn.wordExport = function(fileName) {
            fileName = typeof fileName !== 'undefined' ? fileName : "Test_Content";
            //alert(fileName);
            var static = {
                mhtml: {
                    //top: "Mime-Version: 1.0\nContent-Base: " + location.href + "\nContent-Type: Multipart/related; boundary=\"NEXT.ITEM-BOUNDARY\";type=\"text/html\"\n\n--NEXT.ITEM-BOUNDARY\nContent-Type: text/html; charset=\"utf-8\"\nContent-Location: " + location.href + "\n\n<!DOCTYPE html>\n<html>\n_html_</html>",
					top:"\n\n<!DOCTYPE html>\n<html>\n_html_</html>",
                    head: "<head>\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></meta>\n<style>\n_styles_\n</style>\n</head>\n",
                    body: "<body>_body_</body>"
                }
            };
            var options = {
                maxWidth: 624
            };
            // Clone selected element before manipulating it
            var markup = $(this).clone();

            // Remove hidden elements from the output
            markup.each(function() {
                var self = $(this);
                if (self.is(':hidden'))
                    self.remove();
            });

            // Embed all images using Data URLs
            //var images = Array();
            //alert(markup);
            //var editorText = CKEDITOR.instances.editor1.getData();
            //alert(editorText);
            //markup.html(editorText);
            var img = markup.find('img');
            //alert(markup.html());
            //var i=0;
           /* $('img').each(function() {
            //alert(img[i]);
              if(undefined!=img[i]){
                //alert("img src::"+img[i].src+" i Val::"+i);
                //img[i].id="doc4j_already_found_";
		$(img[i]).attr("src", img[i].src);
                var width_calc=Number(img[i].width)/4;
                var height_calc=Number(img[i].height)/4;
                var width_final=img[i].width-width_calc;
                var height_final=img[i].height-height_calc;
                $(img[i]).attr("width", width_final);
                $(img[i]).attr("height", height_final);
                $(img[i]).attr("id", "doc4j_already_found_");
                $(img[i]).html('new text');
                $(img[i]).css({'display':'block'});
                $(img[i]).css({'width':width_final});
                $(img[i]).css({'height':height_final});
                 alert("width::"+img[i].width+" i value::"+i);
                 i=i+1;
               }
                });*/
                
                for (var i = 0; i < img.length; i++) {
                    //alert(img.length);
                    $(img[i]).attr("src", img[i].src);
                    $(img[i]).attr("id", "doc4j_img_found_"+i);
                    //var color = $( this ).css( "width" );
                    var height_img = $(img[i]).css( "height" );
                    var width_img  = $(img[i]).css( "width" );
                    width_img=width_img.split("px")[0];
                    height_img=height_img.split("px")[0];
                    var width_calc=Number(width_img)/4;
                    var height_calc=Number(height_img)/4;
                    var width_final=width_img-width_calc;
                    var height_final=height_img-height_calc;
                    $(img[i]).attr("width", width_final);
                    $(img[i]).attr("height", height_final);
                    //alert("width_calc::"+width_calc+" width_img::"+width_img+" width_final:"+width_final);
                    $(img[i]).html('new text');
                    $(img[i]).css({'display':'block'});
                    $(img[i]).css({'width':width_final});
                    $(img[i]).css({'height':height_final});
                     //alert("width value::"+width_img+" i value::"+i);
                }
                var styles = "";
                var fileContent = static.mhtml.top.replace("_html_", static.mhtml.head.replace("_styles_", styles) + static.mhtml.body.replace("_body_", markup.html())) ;
                //alert(fileContent);
                document.getElementById("sqlField").innerHTML=fileContent;
                document.getElementById("myForm").submit();                
              
            }
    })(jQuery);
} else {
    if (typeof jQuery === "undefined") {
        console.error("jQuery Word Export: missing dependency (jQuery)");
    }
    if (typeof saveAs === "undefined") {
        console.error("jQuery Word Export: missing dependency (FileSaver.js)");
    };
}
