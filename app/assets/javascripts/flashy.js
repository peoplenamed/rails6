create_flashy = function (key, value) {
  const valid_flashies = ['danger', 'success', 'warning', 'primary', 'secondary', 'info', 'light', 'dark'];

  console.log("key: ", key)
  console.log("value: ", value)
  if(key === 'alert'){
    key = 'danger'
  } else if(key === 'notice'){
    key = 'success'
  } else if(!valid_flashies.includes(key)) {
    key = 'primary';
  }

  const id = key + Math.floor(Math.random() * 100000);
  const element = "<div id= '" + id + "' class='flash flip-scale-down-diag-1 black-alerts alert alert-" + key + "'>" + value + "</div>";
  console.log("element: ", element)
  console.log("id: ", id)
  $('#flashy').append(element);
  $("#" + id).delay(5000).fadeOut(300, function() { $(this).remove(); });
};

show_modal = (title, body) => {
  $('#modalWindow').find('.modal-title').text(title);
  $('#modalWindow').find('.modal-body').text(body);
  var myModal = new bootstrap.Modal(document.getElementById("modalWindow"), {});
  myModal.show();
}