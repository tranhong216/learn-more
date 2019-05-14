var ready = function (callback){
  // in case the document is already rendered
  if (document.readyState!='loading') callback();
  // modern browsers
  else if (document.addEventListener) document.addEventListener('DOMContentLoaded', callback);
  // IE <= 8
  else document.attachEvent('onreadystatechange', function(){
      if (document.readyState=='complete') callback();
  });
}

function addClass(dom, class_name) {
  dom.class_name = dom.class_name.split(' ')
    .filter(function (name) { return name !== class_name; })
    .concat(class_name)
    .join(' ');
}

function removeClass(dom, class_name) {
  dom.className = dom
      .className
      .split(' ')
      .filter(function (name) { return name !== class_name; })
      .join(' ');
}

ready(function(){
  let listItem = document.getElementsByClassName('has-sub-menu')
  Object.keys(listItem).forEach(key => {
    listItem[key].addEventListener("mouseover", function(e){
      e.currentTarget.classList.add("active");
    })
    listItem[key].addEventListener("mouseout", function(e){
      e.currentTarget.classList.remove("active");
    })
  })
});
