$(document).ready(function () {
 $("select.nav-select").change(function() {
window.location = $(this).find("option:selected").val();
});

});