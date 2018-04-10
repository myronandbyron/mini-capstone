var itemTemplate = document.querySelector('#item-card');
var itemContainer = document.querySelector('.row');

itemContainer.appendChild(itemTemplate.content.cloneNode(true));
itemContainer.appendChild(itemTemplate.content.cloneNode(true));