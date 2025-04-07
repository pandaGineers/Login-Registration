document.addEventListener('DOMContentLoaded', function () {
    const urlParams = new URLSearchParams(window.location.search);
    const cartData = urlParams.get('cart');
    console.log("Raw cart query string:", cartData); // ✅ Log raw query string

    const cartContainer = document.getElementById('cart-items-container');
    const totalPriceElement = document.getElementById('total-price');

    if (!cartData) {
        cartContainer.innerHTML = '<p>Your cart is empty.</p>';
        return;
    }

    try {
        const cart = JSON.parse(decodeURIComponent(cartData)); // ✅ Parse the cart
        console.log("Parsed cart object:", cart); // ✅ Log parsed cart

        let total = 0;

        // Create cart items
        cart.forEach((item, index) => {
            const itemTotal = item.price * item.quantity;
            total += itemTotal;

            const itemHTML = `
                <div class="cart-item" id="item-${index}">
                    <img src="${item.image}" alt="${item.name}" width="80" height="80">
                    <div class="item-info">
                        <button class="delete-item" data-index="${index}">&times;</button> <!-- Cross button -->
                        <h4>${item.name}</h4>
                        <p>Price: ${item.price} BDT</p>
                        <!-- Quantity Section with buttons -->
                        <div class="quantity-section">
                            <span>Qty: </span>
                            <button class="decrease-quantity" data-index="${index}">-</button>
                            <span class="item-quantity" id="quantity-${index}">${item.quantity}</span>
                            <button class="increase-quantity" data-index="${index}">+</button>
                        </div>
                    </div>
                </div>
            `;
            cartContainer.innerHTML += itemHTML;
        });

        totalPriceElement.textContent = Math.round(total);

        // Handle increase and decrease buttons
        const decreaseButtons = document.querySelectorAll('.decrease-quantity');
        const increaseButtons = document.querySelectorAll('.increase-quantity');

        decreaseButtons.forEach(button => {
            button.addEventListener('click', function () {
                const index = button.getAttribute('data-index');
                const item = cart[index];
                if (item.quantity > 1) {
                    item.quantity--;  // Decrease quantity
                    document.getElementById(`quantity-${index}`).textContent = item.quantity;  // Update display
                    updateTotalPrice(cart);  // Update total price
                }
            });
        });

        increaseButtons.forEach(button => {
            button.addEventListener('click', function () {
                const index = button.getAttribute('data-index');
                const item = cart[index];
                item.quantity++;  // Increase quantity
                document.getElementById(`quantity-${index}`).textContent = item.quantity;  // Update display
                updateTotalPrice(cart);  // Update total price
            });
        });

        // Handle delete item button
        const deleteButtons = document.querySelectorAll('.delete-item');
        deleteButtons.forEach(button => {
            button.addEventListener('click', function () {
                const index = button.getAttribute('data-index');
                // Remove item from cart
                cart.splice(index, 1);
                // Update the cart view by removing the item HTML
                const itemElement = document.getElementById(`item-${index}`);
                itemElement.remove();
                // Recalculate total price after deletion
                updateTotalPrice(cart);
            });
        });

    } catch (err) {
        cartContainer.innerHTML = '<p>Error loading cart data.</p>';
        console.error('Cart parse error:', err);
    }

    // Optional: Handle form submission
    const checkoutForm = document.getElementById('checkout-form');
    if (checkoutForm) {
        checkoutForm.addEventListener('submit', function (e) {
            e.preventDefault();
            alert('Order placed! Thank you for shopping with us.');
        });
    }

    // Optional: Clear cart
    const clearAllBtn = document.getElementById('clear-all');
    if (clearAllBtn) {
        clearAllBtn.addEventListener('click', function () {
            cartContainer.innerHTML = '<p>Your cart is empty.</p>';
            totalPriceElement.textContent = '0';
        });
    }

    // Optional: Update cart button logic
    const updateCartBtn = document.getElementById('update-cart');
    if (updateCartBtn) {
        updateCartBtn.addEventListener('click', function () {
            alert('Cart updated.');
        });
    }

    // Function to update the total price after quantity change
    function updateTotalPrice(cart) {
        let total = 0;
        cart.forEach(item => {
            total += item.price * item.quantity;
        });
        totalPriceElement.textContent = Math.round(total);  // Update total price display
    }
});
