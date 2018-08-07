function closeMenu() {
  document.getElementById('Menu').style.visibility = 'hidden';
  document.getElementById('Content').style.marginLeft = '0px';
  return;
}

function openMenu() {
  document.getElementById('Menu').style.visibility = 'visible';
  document.getElementById('Content').style.marginLeft = '220px';
}