const fetchBook = function () {
  const bookName = document.querySelector("input").value;
  console.log(bookName);

  const xhr = new XMLHttpRequest();

  xhr.onreadystatechange = function () {
    if (xhr.readyState !== 4) {
      return;
    };
    // console.log(xhr.response);
    const info = JSON.parse(xhr.response);
    // document.body.innerHTML += xhr.response;
    const description = document.createElement('p');
    description.innerHTML = info["items"][0]["volumeInfo"]["description"];
    document.body.appendChild(description);

  };
  xhr.open ('GET', `https://www.googleapis.com/books/v1/volumes?q=title:${bookName}.json`);
  xhr.send();
};

const button = document.querySelector("button");
button.addEventListener("click", fetchBook);
