let cart = {};
document.querySelectorAll('.add-to-cart').forEach((elem) => {
    elem.onclick = addToCart;
    
})

function addToCart() {
    let goodsId = this.dataset.goods_id;
    if (cart[goodsId]) {
        cart[goodsId]++;
    }
    else {
        cart[goodsId] = 1;
    }
    console.log(cart);
    ajaxGetGoodsInfo()
}

function ajaxGetGoodsInfo() {
    fetch('get-goods-info', {
        method: 'POST',
        body: JSON.stringify({ key: Object.keys(cart) }),
        headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json'
        } 
    })
    .then((res) => {
        return res.text();
    })
    .then((body) => {
        console.log(body);
        showCart(JSON.parse(body))
    })
}

function showCart(data) {
    let out = '<table class="table table-striped table-cart><tbody>';
    let total = 0;
    for (let key in cart){
        out += `<tr><td><a href="/goods?id=${key}">${data[key]['name']}</a></a></tr>`;
    }
    out += '</tbody></table>';
    document.querySelector('#cart-nav').innerHTML = out;
}