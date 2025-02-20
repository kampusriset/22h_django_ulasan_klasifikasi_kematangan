function updateFileName() {
  const fileInput = document.getElementById('file-upload');
  const fileName = document.getElementById('file-name');

  if (fileInput.files.length > 0) {
    fileName.textContent = fileInput.files[0].name;
  }
}

window.onscroll = function () {
  var navbar = document.getElementById("navbar");
  if (window.scrollY > 100) {
    navbar.classList.add("is-scrolled");
    navbar.classList.add("navbar-light");
    navbar.classList.remove("navbar-dark");
  } else {
    navbar.classList.remove("is-scrolled");
    navbar.classList.add("navbar-dark");
    navbar.classList.remove("navbar-light");
  }
};
$(document).ready(function(){
  $("#user").click(function(){
    $("#nav_tabel,#nav_logout,#nav_cpw").slideToggle();
  });
});