// Select the cart buttons (cart icons)
const cartButtons = document.querySelectorAll('.ri-shopping-cart-line');

// Initialize an empty cart
let cart = [];

// Add product to cart
function addProductToCart(productId, productName, productPrice, productImage) {
    // Create a new product object
    const product = {
        id: productId,
        name: productName,
        price: productPrice,
        image: productImage,
        quantity: 1 // Default quantity
    };

    // Check if the product already exists in the cart
    const existingProduct = cart.find(item => item.id === productId);
    if (existingProduct) {
        // If the product already exists, increase the quantity
        existingProduct.quantity += 1;
    } else {
        // If not, add it to the cart
        cart.push(product);
    }

    // Update the cart display
    renderCart();
}

// Render the cart dynamically
function renderCart() {
    const cartItemsContainer = document.getElementById('cart-items-container');
    cartItemsContainer.innerHTML = ''; // Clear current cart

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
                <span class="price">Price: $${item.price}</span>
                <div class="quantity-container">
                    <span class="qnt-label">Qty:</span>
                    <input type="number" value="${item.quantity}" class="quantity" data-id="${item.id}" min="1">
                </div>
            </div>
        `;
        cartItemsContainer.appendChild(cartItem);
    });

    document.getElementById('total-price').innerText = totalPrice;

    // Update quantity functionality
    const quantityInputs = document.querySelectorAll('.quantity');
    quantityInputs.forEach(input => {
        input.addEventListener('change', updateQuantity);
    });
}

// Update item quantity in cart
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

// Event listener for each cart button (icon)
cartButtons.forEach(button => {
    button.addEventListener('click', (e) => {
        e.preventDefault();  // Prevent default action

        // Get product details from data attributes
        const productId = parseInt(button.dataset.id);
        const productName = button.dataset.name;
        const productPrice = parseFloat(button.dataset.price);
        const productImage = button.dataset.image;

        // Add product to cart
        addProductToCart(productId, productName, productPrice, productImage);
    });
});
