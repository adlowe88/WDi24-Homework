//
// @cover_image = info['items'].first['volumeInfo']['imageLinks']['thumbnail']
// @saleInfo = info["items"][1]["saleInfo"]
// @description = info["items"].first["volumeInfo"]["description"]
// @retail_price = info["items"][0]["saleInfo"]["retailPrice"]["amount"]
// @author = info["items"][0]["volumeInfo"]["authors"][0]


// button.addEventListener("click", fetchFact);

const fetchBook = function () {
  // debugger;
  const bookName = document.querySelector("input").value;
  console.log(bookName);

  const xhr = new XMLHttpRequest();

  xhr.onreadystatechange = function () {
    if (xhr.readyState !== 4) {
      return;
    };
    // document.body.innerHTML += xhr.response;
    const info = JSON.parse(xhr.response);

    const description = document.createElement('p');
    description.innerHTML = info["items"][0]["volumeInfo"]["description"];
    document.body.appendChild(description);

    // const salesInfo = document.createElement('p');
    // salesInfo.innerHTML = info["items"][1]["saleInfo"];
    // document.body.appendChild(salesInfo);
  };
  xhr.open('GET', `https://www.googleapis.com/books/v1/volumes?q=title:${bookName}.json`);
  xhr.send();
  // console.log("fetchBook has been run");
};

const button = document.getElementsByTagName('button')[0];
// console.log(button);
button.addEventListener("click", fetchBook);
