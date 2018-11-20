// TODO: Autocomplete the input with AJAX calls.
var input = document.querySelector('#company_stock_name'); // #search 에 회사명...
var results = document.querySelector('#results');

var drawResponseList = (data) => {
  results.innerHTML = '';
  data.words.forEach((word) => {
    results.insertAdjacentHTML('beforeend', `<li>${word}</li>`);
  });
};

var autocomplete = (e) => {
  fetch(`http://dart.fss.or.kr/api/search.json?auth=7a86da6c626c9dbf562657e1a97b882253eaf9b3&crp_nm='${e.target.value}'`)
    .then(response => response.json())
    .then(data => drawResponseList(data));
};

input.addEventListener('keyup', autocomplete);
