// const fetchBook = function (e) {
//   e.preventDefault(); // Don't leave this page.
//
//   const title = $('#query').val();
//   // $.ajax / $.get
//   $.getJSON(`https://www.googleapis.com/books/v1/volumes?q=title:${ title }`).done(function (info) {
//     const cover = info.items[0].volumeInfo.imageLinks.thumbnail;
//     const $image = $('#cover');
//     $image.attr('src', cover);
//   }).done(function (info) {
//     const title = info.items[0].volumeInfo.title;
//     const $image = $('#cover');
//     $image.attr('title', title);
//   }).fail(function () {
//     alert('Something bad happened');
//   });
// };
//
// $(document).ready(function () {
//   $('#title-search').on('submit', fetchBook);
// });


//Global variables
let authorList = "";
let indexStart = 0;
let indexEnd = 0;

const findAuthors = function (authors) {
  for (let i = 0; i < authors.length; i++) {
    authorList += authors[i].creator;
  };
  return authorList;
};

const date = function () {

  let today = new Date();
  let dd = today.getDate();
  let mm = today.getMonth()+1; //January is 0!
  let yyyy = today.getFullYear();

  if(dd < 10) {
      dd = '0'+ dd
  };

  if(mm < 10) {
      mm = '0'+ mm
  };

  // today = mm + '/' + dd + '/' + yyyy;
  today = yyyy + '-' + mm + '-' + dd;

  return today;
};

//To pick 5 different journal indicies on each refresh
const randomNumberIndex = function () {
  //Returns a number between 0 and 100
  indexStart = Math.floor(Math.random() * 100);
  indexEnd = indexStart + 5;
};


const fetch = function (e) {
  e.preventDefault();
  // console.log("before query");
  const query = $('#query').val();
  // console.log("after query", query);

  $.getJSON(`http://api.springer.com/meta/v1/json?api_key=b9ab99a51faec6511d70c08f878cfc61&q=keyword%3A${ query }&s=1&p=100`).done(function (info) {
    //Title
    // const title = info.records[0].title;
    // const $title1 = $('#title1').text(title);
    //
    // //Authors
    // const authors1 = info.records[0].creators;
    // findAuthors(authors1);
    // const $authors1 = $('#authors1').text(authorList);
    //
    // //Publication Date
    // const pubDate1 = info.records[0].onlineDate;
    // const $pubDate1 = $('#pubDate1').text(pubDate1);
    //
    // //Abstract
    // const abstract1 = info.records[0].abstract;
    // const $abstract1 = $('#abstract1').text(abstract1);

    //Generate random number to index search
    randomNumberIndex();
    console.log(indexStart);
    console.log(indexEnd);

    for (let i = indexStart; i < indexEnd; i++) {
      //Title and URL
      const title = info.records[i].title;
      const url = info.records[i].url[0].value;
      console.log(title);
      $('.journal-container').append(`<h3> <a href="${url}">${title}</a> </h3>`);

      //Authors
      const authors = info.records[i].creators;
      findAuthors(authors);
      console.log(authorList);
      $('.journal-container').append(`<p>${authorList}</p>`);
      authorList = "";

      //Publication Date
      const pubDate = info.records[i].onlineDate;
      console.log(pubDate);
      $('.journal-container').append(`<p>${pubDate}</p>`);

      //Abstract
      const abstract = info.records[i].abstract;
      console.log(abstract);
      $('.journal-container').append(`<p>${abstract}</p>`);
    };

  })
  // .fail(function () {
  //     alert("There was a problem with your request, please try again!");
  // });

  $.getJSON(`http://api.springer.com/meta/v1/json?api_key=b9ab99a51faec6511d70c08f878cfc61&q=date%3A${ date() }&s=1&p=10`).done(function (info) {


    //Loop through the number records array
    for (let i = 0; i < info.records.length; i++) {
      //Title and URL
      const title = info.records[i].title;
      const url = info.records[i].url[0].value;
      console.log(title);
      $('.journal-container2').append(`<h3> <a href="${url}">${title}</a> </h3>`);

      //Authors
      const authors = info.records[i].creators;
      findAuthors(authors);
      console.log(authorList);
      $('.journal-container2').append(`<p>${authorList}</p>`);
      authorList = "";

      //Publication Date
      const pubDate = info.records[i].onlineDate;
      console.log(pubDate);
      $('.journal-container2').append(`<p>${pubDate}</p>`);

      //Abstract
      const abstract = info.records[i].abstract;
      console.log(abstract);
      $('.journal-container2').append(`<p>${abstract}</p>`);
    };
  });

  //Request to BBC for all articles tagged 'Health', 'Medical' or 'Medicine'
  $.getJSON(`https://newsapi.org/v2/everything?q=health&medicine&medical&sources=bbc-news&from=${ date() }&sortBy=popularity&apiKey=c677e35803a54ffca44704f1ff1e7c5d`).done(function (info) {

    for (let i = 0; i < info.articles.length; i++) {
      //Title
      const title = info.articles[i].title;
      const url = info.articles[i].url;
      $('.bbc').append(`<p> <a href="${url}">${title}</a> </p>`);
      //Image
      const image = info.articles[i].urlToImage;
      $('.bbc').append(`<img src="${image}">`);
      //Description
      const description = info.articles[i].description;
      $('.bbc').append(`<p> ${description} </p>`);

    };
  });
};


$(document).ready(function () {
  $('#journal-search').on('submit', fetch);
});













// const $form = $('#title-search');
// $form.on('submit', function (e) {
//   e.preventDefault(); // Don't leave this page
//
//   const title = $('#query').val();
//   // console.log(title);
//   $.ajax(`https://www.googleapis.com/books/v1/volumes?q=title:${title}`,  {
//     success: function (info) {
//       console.log('request complete');
//       if (info.totalItems === 0) {
//         alert('Title not found');
//         return;
//       };
//       const cover = info.items[0].volumeInfo.imageLinks.thumbnail;
//       const title = info.items[0].volumeInfo.title;
//
//       const image = document.getElementById('cover');
//       image.setAttribute('src', cover);
//       image.setAttribute('title', title);
//     }
//   });
// });
//



// const form = document.getElementById('title-search');
// form.addEventListener('submit', function (event) {
//   event.preventDefault(); // Don't really submit the form, stay on this page.
//
//   const title = document.getElementById('query').value;
//
//   // make an ajax request for that title
//   const xhr = new XMLHttpRequest();
//   xhr.onreadystatechange = function () {
//     if (xhr.readyState !== 4) { return; }
//
//     const info = JSON.parse( xhr.response );
//
//     if (info.totalItems === 0) {
//       alert('Title not found');
//       return;
//     }
//
//     const cover = info.items[0].volumeInfo.imageLinks.thumbnail;
//     const title = info.items[0].volumeInfo.title;
//
//     const image = document.getElementById('cover');
//     image.setAttribute('src', cover);
//     image.setAttribute('title', title);
//   }
//
//   xhr.open('GET', 'https://www.googleapis.com/books/v1/volumes?q=title:' + title);
//   xhr.send();
// });
