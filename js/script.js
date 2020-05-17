$(document).ready(function () {

    $(".olol").click(function() {
        $(".lol").remove();
    })


    $(".searchBox").mouseover(function() {
        $(".searchInput").css("width", "240px");
        $(".searchInput").css("padding", "0 6px");
    })

    $(".searchBox").mouseleave(function() {
        if ( $(".searchHeaderText").val() == "" ) {
            $(".searchInput").css("width", "0px");
            $(".searchInput").css("padding", "0px");
        }
    })

    $(".searchHeaderText").blur(function() {
        $(".searchInput").css("width", "0px");
        $(".searchInput").css("padding", "0px");
    })

    // $(".searchBox").click(function() {
    //     if ( $(".searchHeaderText").val() != "" ) {
    //         $.ajax({
    //             url: 'autocompleteSearch.php', // La ressource ciblée
    //             type: 'POST', // Le type de la requête HTTP
    //             data: { name: $(".searchHeaderText").val() },
    //             success: function(data){
    //                 // console.log(data, "gg");
    //                 result = jQuery.parseJSON(data);
    //                 // console.log(result);
    //                 $(".searchHeaderText").after("<datalist id='answers' class='lol'></datalist>");
    //                 $.each(result, function() {
    //                     if (this[1] != $(".searchHeaderText").val() ) {
    //                         $(".lol").append("<option class='olol'>"+this[1]+"</option>");
    //                         console.log(this[1]);
    //                     }
    //                 })
    //             }
    //         })
    //     }
    // })

    $(".searchHeaderText").keyup(function( event ) {
        $(".lol").remove();
        $(".olol").remove();
        // console.log($(".searchHeaderText").val());
        if ( $(".searchHeaderText").val() != "" ) {
            $.ajax({
                url: 'autocompleteSearch.php', // La ressource ciblée
                type: 'POST', // Le type de la requête HTTP
                data: { name: $(".searchHeaderText").val() },
                success: function(data){
                    // console.log(data, "gg");
                    result = jQuery.parseJSON(data);
                    // console.log(result);
                    $(".searchHeaderText").after("<datalist id='answers' class='lol'></datalist>");
                    $.each(result, function() {
                        if (this[1] != $(".searchHeaderText").val() ) {
                            $(".lol").append("<option class='olol'>"+this[1]+"</option>");
                            console.log(this[1]);
                        }
                    })
                    if ( $(".cchampions").length ) {
                        $(".cchampions").remove();
                        $(".cmid").append("<article class='cchampions'>");
                        $.each(result, function() {
                            $(".cchampions").append("<a id='lien' href='element.php?idchamp="+this[0]+"'><div><img src='"+this[4]+"' alt='champion' /><p>"+this[1]+"</p></div></a>");
                        })
                        $(".cmid").append("</article>");
                    }
                }
            })
        }
    })

})