function openModal(title, body, buttons=[]) {
  $("#modalWindow").find(".modal-title").text(title);
  $("#modalWindow").find(".modal-body").text(body);
  setModalButtons(buttons)
  $("#modalWindow").modal('show');
}

function openHTMLModal(title, body, buttons=[]) {
  $("#modalWindow").find(".modal-title").text(title);
  $("#modalWindow").find(".modal-body").html(body);
  setModalButtons(buttons)
  $("#modalWindow").modal('show');
}

function setModalButtons(buttons) {
  // Example: {name: 'Save', id: 'new_credentials_form_save_button', callback: someFunction, params}
  console.log("buttons: ", buttons)
  let buttonHtml = '';
  if (buttons) {
    buttonHtml = '';
    for (let i=0; i< buttons.length; i++) {
      buttonHtml += `<button id="${buttons[i].id}" class="btn btn-default" type="button">${buttons[i].name}</button>`
      $('body').on('click', `#${buttons[i].id}`, buttons[i].callback.bind(this, buttons[i].params));
    }
  }
  buttonHtml += '<button class="btn btn-default" data-dismiss="modal" type="button">Close</button>';
  $("#modalWindow").find(".modal-footer").html(buttonHtml);
}

function clickHiddenButtonByID(params) {
  console.log("params: ", params)
  const id = `#${params[0]}`;
  console.log("id: ", id)
  console.log($('body').find(id))
  $('body').find(id).click();
}