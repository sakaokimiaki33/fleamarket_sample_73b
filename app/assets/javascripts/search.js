$(function() {
  function buildChildHTML(child){
    var html =`<a class="child_categorie" id="${child.id}"
              href="/cateforie/${child.id}">${child.name}</a>`;
    return html;
  }

  $(".parent_categorie").on("mouseover", function() {
    var id = this.id
    $(".now-selected-red").removeClass("now-selected-red")
    $('#' + id).addClass("now-selected-red");
    $(".child_categore").remove();
    $(".grand_child_categorie").remove();
    $.ajax({
      type: 'GET',
      url:'/categorie/new',
      data: {parent_id: id},
      dataType: 'json'
    }).done(function(children) {
      children.forEach(function (child) {
        var html = buildChildHTML(child);
        $(".children_list").append(html);
      })
    });
  });

  $(document).on("mouseover", "child_categorie", function() {
    var id = this.id
    $(".now-selected-gray").removeClass("now-selected-gray");
    $('#' + id).addClass("now-selected-gray");
    $.ajax({
      type: 'GET',
      url: '/categore/new',
      data: {parent_id: id},
      dataType: 'json'
    }).done(function(children) {
      children.forEach(function (child) {
        var html = buildGrandChildHTML(child);
        $(".grand_children_list").append(html);
      })
      $(document).on("mouseover", ".child_categorie", function() {
        $(".grand_child_categorie").remove();
      });
    });
  });
});