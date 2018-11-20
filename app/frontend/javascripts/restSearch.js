// TODO: Autocomplete the input with AJAX calls.
const input = document.querySelector('#search'); // #search 에 회사명...
const results = document.querySelector('#results');

const drawResponseList = (data) => {
  results.innerHTML = '';
  data.words.forEach((word) => {
    results.insertAdjacentHTML('beforeend', `<li>${word}</li>`);
  });
};

const autocomplete = (e) => {
  fetch(`http://dart.fss.or.kr/api/search.json?auth=7a86da6c626c9dbf562657e1a97b882253eaf9b3&crp_nm='${e.target.value}'`)
    .then(response => response.json())
    .then(data => drawResponseList(data));
};

input.addEventListener('keyup', autocomplete);
