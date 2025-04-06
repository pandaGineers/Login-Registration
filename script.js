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
document.addEventListener("DOMContentLoaded", function () {
  document.getElementById('paymentForm').addEventListener('submit', async function (e) {
    e.preventDefault(); // Prevent default form submission

    const formData = new FormData(this);
    const formObject = Object.fromEntries(formData.entries());

    // Prepare data for SSLCommerz payment
    const data = {
      ...formObject,
      store_id: "tkaruk67f22a9723164",  // Replace with actual store ID
      store_passwd: "karuk67f22a9723164@ssl",  // Replace with actual store password
      currency: "BDT",
      tran_id: "SSLCZ_TEST_" + Math.random().toString(36).substring(2, 15),
      success_url: "https://karukunjo.com/success",  // Replace with actual success URL
      fail_url: "https://karukunjo.com/fail",  // Replace with actual fail URL
      cancel_url: "https://karukunjo.com/cancel",  // Replace with actual cancel URL

      emi_option: "1",
      emi_max_inst_option: "9",
      emi_selected_inst: "9",

      cus_add1: "Dhaka",
      cus_add2: "Dhaka",
      cus_city: "Dhaka",
      cus_state: "Dhaka",
      cus_postcode: "1000",
      cus_country: "Bangladesh",
      cus_fax: "01711111111",

      ship_name: "testkaruk9n7m",
      ship_add1: "Dhaka",
      ship_add2: "Dhaka",
      ship_city: "Dhaka",
      ship_state: "Dhaka",
      ship_postcode: "1000",
      ship_country: "Bangladesh",

      value_a: "ref001",
      value_b: "ref002",
      value_c: "ref003",
      value_d: "ref004",

      cart: JSON.stringify([
        { product: "DHK TO BRS AC A1", amount: "200.00" },
        { product: "DHK TO BRS AC A2", amount: "200.00" },
        { product: "DHK TO BRS AC A3", amount: "200.00" },
        { product: "DHK TO BRS AC A4", amount: "200.00" }
      ]),
      product_amount: "100",
      vat: "5",
      discount_amount: "5",
      convenience_fee: "3"
    };

    try {
      console.log("Sending payment request to SSLCommerz...");
      const res = await fetch("https://sandbox.sslcommerz.com/gwprocess/v3/api.php", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify(data)
      });

      const result = await res.json();
      console.log("SSLCommerz Response:", result);

      if (result?.GatewayPageURL) {
        console.log("Redirecting to Gateway Page URL...");
        window.location.href = result.GatewayPageURL;
      } else {
        alert("Payment initialization failed. Response from server:");
        console.error("SSLCommerz Response:", result);
      }
    } catch (error) {
      alert("Error during payment initialization.");
      console.error("Fetch error:", error);
    }
  });
});


