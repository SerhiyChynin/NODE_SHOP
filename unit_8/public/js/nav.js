console.log('===========');

function getCategoryList() {
    fetch('/get-category-list', {
            method: 'POST'
        }
    ).then((response) => {
            return response.text();
        }
    ).then((body) => {
        console.log(body);
        showCategoryList(JSON.parse(body));
        }
    )

}

function showCategoryList(data) {
    console.log(data);
}
getCategoryList();