$(function() {
  $('#simple_sketch').sketch();

  $("#show_png").click(function(){
    alert("good");
    //$('#simple_sketch').sketch().download();
    var s = $('#simple_sketch').sketch().el.toDataURL('image/png');
    alert(s);
  })  

  $("#toggle_syn").click(function(){
    var obj = $(this)
    if (obj.text() == 'start_syn') {
      obj.text('end_syn');
      myVar = setInterval(function(){myTimer()},200);
    } else {
      obj.text('start_syn');
      $("div#simple_sketch_syn").text('end_syn');
      myStopFunction();
    }
  })
});


function myTimer(){
  var png = $('#simple_sketch').sketch().el.toDataURL('image/png');
  $("#simple_sketch_syn").attr("src",png);
}

function myStopFunction()
{
  clearInterval(myVar);
}


