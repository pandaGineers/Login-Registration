let closer = document.querySelector('#closer');

closer.onclick = () => {
    closer.style.display = 'none';
    navbar.classList.remove('active');
    cart.classList.remove('active');
}

let navbar = document.querySelector('.navbar');

document.querySelector('#menu-btn').onclick = () => {
    closer.style.display = "block";
    navbar.classList.toggle('active');
}

// Initialize an empty cart
let cart = [];

// Sample product data (replace with actual product data from your store)
const products = [
    { id: 1, name: "CHITROPOT", price: 140, image: "image/product12.jpg" },
    { id: 2, name: "MATIR PATRO", price: 140, image: "image/product10.jpg" },
    { id: 3, name: "BATI", price: 140, image: "image/product6.jpg" },
    { id: 4, name: "MRITSRIJON", price: 140, image: "image/product5.jpg" }
];

// Add product to cart
function addProductToCart(productId) {
    const product = products.find(item => item.id === productId);
    if (product) {
        const existingProduct = cart.find(item => item.id === productId);
        if (existingProduct) {
            existingProduct.quantity += 1;
        } else {
            cart.push({ ...product, quantity: 1 });
        }
        renderCart();
    }
}

// Render the cart dynamically
function renderCart() {
    const cartContainer = document.getElementById('cart-items-container');
    cartContainer.innerHTML = ''; // Clear current cart

    let totalPrice = 0;

    cart.forEach(item => {
        const itemTotal = item.price * item.quantity;
        totalPrice += itemTotal;

        const cartItem = document.createElement('div');
        cartItem.classList.add('cart-item');
        cartItem.innerHTML = `
            <img src="${item.image}" alt="${item.name}">
            <div class="content">
                <h3>${item.name}</h3>
                <span class="price">Price: ${item.price}</span>
                <div class="quantity-container">
                    <span class="qnt-label">Qty:</span>
                    <input type="number" value="${item.quantity}" class="quantity" data-id="${item.id}" min="1">
                </div>
                
               
                <i class="ri-close-line close-icon" data-id="${item.id}"></i>
            </div>
        `;
        cartContainer.appendChild(cartItem);
    });

    document.getElementById('total-price').innerText = totalPrice;

    const quantityInputs = document.querySelectorAll('.quantity');
    quantityInputs.forEach(input => {
        input.addEventListener('change', updateQuantity);
    });

    const removeIcons = document.querySelectorAll('.close-icon');
    removeIcons.forEach(icon => {
        icon.addEventListener('click', removeItem);
    });
}

// Update item quantity
function updateQuantity(e) {
    const productId = parseInt(e.target.getAttribute('data-id'));
    const quantity = parseInt(e.target.value);

    if (quantity < 1) {
        e.target.value = 1;
        return;
    }

    const product = cart.find(item => item.id === productId);
    if (product) {
        product.quantity = quantity;
        renderCart();
    }
}

// Remove item from cart
function removeItem(e) {
    const productId = parseInt(e.target.getAttribute('data-id'));
    cart = cart.filter(item => item.id !== productId);
    renderCart();
}

// Clear all items in cart
function clearAll() {
    cart = [];
    renderCart();
}

// Update cart
function updateCart() {
    alert('Cart Updated Successfully!');
    renderCart();
}

// Event listeners for buttons
document.getElementById('clear-all').addEventListener('click', clearAll);
document.getElementById('update-cart').addEventListener('click', updateCart);

// Automatically add products to the cart for testing
addProductToCart(1);
addProductToCart(2);
addProductToCart(3); 
addProductToCart(4); 

// Cart Icon functionality
let cartIcon = document.getElementById('cart-btn'); 
let cartContainer = document.querySelector('.shopping-cart'); 

cartIcon.onclick = function() {
    cartContainer.classList.toggle('active'); 
};

// Add scrollbar to cart container
const cartContainerElement = document.getElementById('cart-items-container');
cartContainerElement.style.maxHeight = '400px'; 
cartContainerElement.style.overflowY = 'auto'; 

// Close cart with cross button
let closeCartBtn = document.getElementById('close-cart');
closeCartBtn.onclick = function() {
    cartContainer.classList.remove('active'); 
    closer.style.display = 'none'; 
}
