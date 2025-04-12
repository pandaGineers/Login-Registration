document.addEventListener('DOMContentLoaded', function () {
    const urlParams = new URLSearchParams(window.location.search);
    const cartData = urlParams.get('cart');
    console.log("Raw cart query string:", cartData); // ✅ Log raw query string

    const cartContainer = document.getElementById('cart-items-container');
    const totalPriceElement = document.getElementById('total-price');
    const paymentForm = document.getElementById('payment-form');
    const updateCartButton = document.getElementById('update-cart');  // Get the Update Cart button

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

        // Handle form submission (redirect to payment.php using AJAX)
        if (paymentForm) {
            paymentForm.addEventListener('submit', function (e) {
                e.preventDefault();

                // Validate checkout form fields
                const name = document.getElementById('name').value;
                const address = document.getElementById('address').value;
                const phone = document.getElementById('phone').value;
                const city = document.getElementById('city').value;
                const postal = document.getElementById('postal').value;

                // Array to store unfilled fields
                const requiredFields = [
                    { id: 'name', value: name },
                    { id: 'address', value: address },
                    { id: 'phone', value: phone },
                    { id: 'city', value: city },
                    { id: 'postal', value: postal }
                ];

                let allFieldsFilled = true;
                let firstUnfilledField = null; // Store the first unfilled field

                // Loop over each field and check if it's empty
                requiredFields.forEach(field => {
                    const fieldElement = document.getElementById(field.id);
                    if (!field.value.trim()) {
                        allFieldsFilled = false;
                        fieldElement.classList.add('error');  // Add error class to highlight unfilled field
                        if (!firstUnfilledField) {
                            firstUnfilledField = fieldElement;  // Set the first unfilled field
                        }
                    } else {
                        fieldElement.classList.remove('error');  // Remove error class if the field is filled
                    }

                    // Add event listener to remove red border when the user starts typing
                    fieldElement.addEventListener('input', function () {
                        if (fieldElement.value.trim()) {
                            fieldElement.classList.remove('error');  // Remove red border once typing begins
                        }
                    });
                });

                // If not all fields are filled, prevent form submission
                if (!allFieldsFilled) {
                    firstUnfilledField.focus(); // Focus on the first unfilled field
                    return; // Prevent form submission if any field is empty
                }

                // Log to make sure data is captured correctly
                console.log('Name:', name);
                console.log('Address:', address);
                console.log('Phone:', phone);
                console.log('City:', city);
                console.log('Postal Code:', postal);

                const updatedTotal = cart.reduce((sum, item) => sum + item.price * item.quantity, 0);

                const cartDataString = JSON.stringify(cart);
                const actionURL = `http://localhost/payment.php?cart=${encodeURIComponent(cartDataString)}&Total_amount=${Math.round(updatedTotal)}&cus_name=${encodeURIComponent(name)}&cus_add1=${encodeURIComponent(address)}&cus_city=${encodeURIComponent(city)}&cus_phone=${encodeURIComponent(phone)}&cus_postal=${encodeURIComponent(postal)}`;

                // Redirect to the payment page with added query parameters
                window.location.href = actionURL;
            });
        }

        // Handle Update Cart button click
        if (updateCartButton) {
            updateCartButton.addEventListener('click', function () {
                // Alert the user that the cart has been updated
                alert("Cart successfully updated!");
            });
        }

    } catch (err) {
        cartContainer.innerHTML = '<p>Error loading cart data.</p>';
        console.error('Cart parse error:', err);
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
