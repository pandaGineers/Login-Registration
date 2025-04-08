document.addEventListener('DOMContentLoaded', function () {
    // Select the necessary elements
    let closer = document.querySelector('#closer');
    let navbar = document.querySelector('.navbar');
    let cartContainer = document.querySelector('.shopping-cart');
    let cartBtn = document.querySelector('#cart-btn');
    let closeCartBtn = document.querySelector('#close-cart'); // Ensure this ID exists in HTML

    // Toggle Navbar
    document.querySelector('#menu-btn').onclick = () => {
        closer.style.display = "block";
        navbar.classList.toggle('active');
        cartContainer.classList.remove('active'); // Close cart if navbar is toggled
        closer.style.display = navbar.classList.contains('active') ? 'block' : 'none';
    }

    // Toggle Cart
    cartBtn.onclick = () => {
        closer.style.display = "block";
        cartContainer.classList.toggle('active');
        navbar.classList.remove('active'); // Close navbar if cart is toggled
        closer.style.display = cartContainer.classList.contains('active') ? 'none' : 'block';
    }

    // Close Navbar and Cart when clicking the overlay (closer)
    closer.onclick = () => {
        closer.style.display = 'none';
        navbar.classList.remove('active');
        cartContainer.classList.remove('active');
    }

    // Close Cart with cross button functionality
    if (closeCartBtn) {
        closeCartBtn.onclick = function() {
            cartContainer.classList.remove('active');
            closer.style.display = 'none'; 
        }
    }

    // Sample product data (replace with actual product data from your store)
    const products = [
        { id: 1, name: "CHITROPOT", price: 140, image: "image/product12.jpg" },
        { id: 2, name: "MATIR PATRO", price: 140, image: "image/product10.jpg" },
        { id: 3, name: "BATI", price: 140, image: "image/product6.jpg" },
        { id: 4, name: "MRITSRIJON", price: 140, image: "image/product5.jpg" }
    ];

    // Initialize an empty cart
    let cart = [];

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
                </div>
                <button class="remove-item" data-id="${item.id}">
                    <i class="ri-close-line"></i>
                </button> 
            `;
            cartContainer.appendChild(cartItem);
        });
    
        document.getElementById('total-price').innerText = totalPrice;
    }

    // Event delegation for remove button (works for dynamically added items)
    document.getElementById('cart-items-container').addEventListener('click', function (e) {
        if (e.target.closest('.remove-item')) {
            const productId = parseInt(e.target.closest('.remove-item').getAttribute('data-id'));
            removeFromCart(productId);
        }
    });

    // Remove item from cart
    function removeFromCart(itemId) {
        cart = cart.filter(item => item.id !== itemId);
        renderCart(); // Re-render the cart to update UI after removal
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

    // Add products to cart for testing
    addProductToCart(1);
    addProductToCart(2);
    addProductToCart(3);
    addProductToCart(4);

    // Add to cart from shop dynamically
    document.querySelectorAll('.add-to-cart').forEach(button => {
        button.addEventListener('click', function() {
            const productId = parseInt(this.getAttribute('data-id'));
            const productName = this.getAttribute('data-name');
            const productPrice = parseFloat(this.getAttribute('data-price'));
            const productImage = this.getAttribute('data-image'); // Make sure data-image exists in HTML

            const existingProduct = cart.find(item => item.id === productId);
            if (existingProduct) {
                existingProduct.quantity += 1;
            } else {
                cart.push({
                    id: productId,
                    name: productName,
                    price: productPrice,
                    image: productImage,
                    quantity: 1
                });
            }
            renderCart();
        });
    });

    // Add scrollbar to cart container
    const cartContainerElement = document.getElementById('cart-items-container');
    cartContainerElement.style.maxHeight = '400px'; 
    cartContainerElement.style.overflowY = 'auto';

    // Attach event listener for updating quantity (delegation)
    document.getElementById('cart-items-container').addEventListener('input', function(e) {
        if (e.target.classList.contains('quantity')) {
            updateQuantity(e);
        }
    });
});




//payment
document.getElementById('paymentForm').addEventListener('submit', async (e) => {
    e.preventDefault();
    
    // 1. Collect form data
    const formData = new FormData(e.target);
    const formBody = new URLSearchParams(formData).toString();
  
    try {
      // 2. Send to Vercel proxy (replace with your Vercel URL)
      const response = await fetch('https://your-vercel-app.vercel.app/api/sslcommerz', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: formBody
      });
  
      // 3. Handle response
      const result = await response.json();
      if (result.GatewayPageURL) {
        window.location.href = result.GatewayPageURL; // Redirect to payment page
      } else {
        alert(result.message || "Payment failed");
      }
    } catch (error) {
      alert("Error: " + error.message);
    }
  });

//category navbar
document.addEventListener("DOMContentLoaded", function () {
        const menuBtn = document.querySelector('.menu-btn');
        const categoryLinks = document.querySelector('.category-links');

        menuBtn.addEventListener('click', function () {
            categoryLinks.classList.toggle('active');
        });
    });

