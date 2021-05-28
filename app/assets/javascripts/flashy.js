create_flashy = function create_flashy(key, value) {
  const valid_flashies = ['danger', 'success', 'warning', 'primary', 'secondary', 'info', 'light', 'dark'];

  if(key === 'alert'){
    key = 'danger'
  } else if(key === 'notice'){
    key = 'success'
  } else if(!valid_flashies.includes(key)) {
    key = 'primary';
  }

  const id = key + Math.floor(Math.random() * 100000);
  const element = "<div id= '" + id + "' class='flash flip-scale-down-diag-1 black-alerts alert alert-" + key + "'>" + value + "</div>";
  $('#flashy').append(element);
  $("#" + id).delay(5000).fadeOut(300, function() { $(this).remove(); });
};